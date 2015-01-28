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

import org.json.JSONException;

import components.CPU;


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
		System.out.println(parsedJSONString);
		
		if (parsedJSONString.isEmpty()) {
			System.out.println("No component chosen");
		} else {
			ArrayList comp = null;
			try {
				comp = JSONparseClass.Start();
				ServletContext context = getServletContext();
				RequestDispatcher rd = context.getRequestDispatcher("/OutputUser.jsp");
				request.setAttribute("Components", comp);
				rd.forward(request, response);
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
	}
	
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	
	}
}