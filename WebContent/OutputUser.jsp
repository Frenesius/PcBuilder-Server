<%@ page language="java" import="java.util.*, java.lang.*" %>


 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "components.CPU" %>
 <%@ page import = "components.GPU" %>
 <%@ page import = "components.SSD" %>
 <%@ page import = "components.HDD" %>
  <%@ page import = "components.PSU" %>
   <%@ page import = "components.OpticalDrive" %>
    <%@ page import = "components.Motherboard" %>
     <%@ page import = "components.CASE" %>
 <%@ page import = "components.Soundcard" %>  
  <%@ page import = "components.Memory" %>    
 
 
 
 
  <%@ page import = "servlet.UserRequest" %>
  <%@ page import = "servlet.JSONparseClass" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>TEST</h1>
<% 


	ArrayList a = (ArrayList) request.getAttribute("Components");
	System.out.println("Abed print -------");
	System.out.println(a);
	System.out.println("-------");

	CPU cpu = (CPU) a.get(0);
	GPU gpu = (GPU) a.get(1);
	Memory ram = (Memory) a.get(2);
	HDD hdd = (HDD) a.get(3);
	SSD ssd = (SSD) a.get(4);
	PSU psu = (PSU) a.get(5);
	CASE Case = (CASE) a.get(6);
	Motherboard mb = (Motherboard) a.get(7);
	OpticalDrive opt = (OpticalDrive) a.get(8);
	Soundcard sound = (Soundcard) a.get(9);



%>
<h2>Abid Cpu: <% cpu.getAantalcores(); %></h2>

</body>
</html>