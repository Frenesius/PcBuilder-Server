<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script>
			function unload(){
			
					document.getElementById("indextxt").innerHTML = '<h1>Please wait</h1>'
					+ '<img src="http://www.mytreedb.com/uploads/mytreedb/loader/ajax_loader_blue_512.gif" style="width:128px;height:128px">';
							
						}
	
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>


	<link href="CSS/style.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
	body {
		background-color: #999999;
	}
	</style>
</head>
<body>

<div class="header"></div>
<div class="menu" align="center"><a href="Home.jsp">
<img src="images/home.png" onmouseover="this.src='images/home_click.png'" onmouseout="this.src='images/home.png'" width="100" height="50" /><img src="images/LineSeparator.png" width="5" height="50" /></a>
  <a href="Builder.jsp"><img src="images/Builder.png" onmouseover="this.src='images/builder_click.png'" onmouseout="this.src='images/builder.png'" width="100" height="50"/></a><a href="Builder.jsp"><img src="images/LineSeparator.png" alt="" width="5" height="50" /></a>
  <a href="About.jsp"><img src="images/about.png" onmouseover="this.src='images/about_click.png'" onmouseout="this.src='images/about.png'" width="100" height="50"/></a><a href="Builder.jsp"><img src="images/LineSeparator.png" alt="" width="5" height="50" /></a>
  <a href="Contact.jsp"><img src="images/contact.png" onmouseover="this.src='images/contact_click.png'" onmouseout="this.src='images/contact.png'" width="100" height="50" /></a>
  <a href="Builder.jsp"><img src="images/LineSeparator.png" alt="" width="5" height="50" /></a><a href="admin.html"><img src="images/admin.png" alt="" width="100" height="50" onmouseover="this.src='images/admin_click.png'" onmouseout="this.src='images/admin.png'" /></a></div>
<div class="container">
  <p>&nbsp;</p>
  <p><br />
</p>
  <div id="indextxt">
    <table width="472" border="0" align="center">
		      <tr>
		        <td width="440"><strong>
		        <form action="/FrontEndFrenesius/PageProcessing" method="POST">
				        <table >
									    <thead>
									        <tr><th><h1>Components</h1></th><th></th></tr>
									    </thead>
									    <tr>
									    	<td>CPU</td>
									        <td><input type="checkbox" name="checkboxParts" value="cpu" /></td>
									    </tr>
									    <tr>
									    	<td>Motherboard</td>
									        <td><input type="checkbox" name="checkboxParts" value="motherboard"/></td>									        
									    </tr>
									    <tr>
									   		<td>GPU</td>
							        		<td><input type="checkbox" name="checkboxParts" value="gpu"/></td>
							   		 	</tr>
							   		 	<tr>
							   		 		<td>Soundcard</td>
							   		 		<td><input type="checkbox" name="checkboxParts" value="soundcard"/></td>
							   		 	</tr>
							   		 	<tr>
							   		 		<td>CASE</td>
							   		 		<td><input type="checkbox" name="checkboxParts" value="case" /></td>
							   		 	</tr>
							   		 	<tr>
							   		 		<td>SSD</td>
							   		 		<td><input type="checkbox" name="checkboxParts" value="ssd" /></td>
							   		 	</tr>
							   		 	<tr>
							   		 		<td>PSU</td>
							   		 		<td><input type="checkbox" name="checkboxParts" value="psu" /></td>							   		 	
							   		 	</tr>
							   		 	<tr>
							   		 		<td>Optical Drive</td>
							   		 		<td><input type="checkbox" name="checkboxParts" value="opticaldrive" /></td>
							   		 	</tr>
							   		 	<tr>
							   		 		<td>HDD</td>
							   		 		<td><input type="checkbox" name="checkboxParts" value="hdd" /></td>
							   		 	</tr>
							   		 	<tr>
							   		 		<td>RAM</td>
							   		 		<td><input type="checkbox" name="checkboxParts" value="ram" /></td>
							   		 	</tr>
							   		 	<tr>
							   		 		<td><input type="submit" name="Submit" value="Submit" onclick='unload()' /> </td>
							   		 	</tr>
						</table>
						</form>
                </strong></td>
      </tr>
    </table>
    <p>&nbsp;</p>
  </div>

 
</div>
<div class="footer">
  <p><br />
  Website Contents Copyright © 2014 Frenesius PC Builder</p>
</div>
					
</body>
</html>