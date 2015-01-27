package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/UserRequest.do")
public class UserRequest extends HttpServlet {

	public static String parsedJSONString;
	
	public static String getParsedJSONString() {
		return parsedJSONString;
	}

	public void setParsedJSONString(String parsedJSONString) {
		UserRequest.parsedJSONString = parsedJSONString;
	}
	
	private static final long serialVersionUID = 1L;
       
    public UserRequest() {
        super();        
    }

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		
		BufferedReader bufferedReaderFromUserInput = new BufferedReader(new InputStreamReader(request.getInputStream()));
		parsedJSONString = bufferedReaderFromUserInput.readLine();
		setParsedJSONString(parsedJSONString);
		ServletContext context= getServletContext();
		
		if (parsedJSONString.isEmpty()) {
			System.out.println("No component chosen");
		} else {
			RequestDispatcher rd = context.getRequestDispatcher("/OutputUser.do");
			rd.forward(request, response);
		}	
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}