<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			<form action="add-class" method="post">
				Class Name <input type="text" name="className" id = "className" />
				<label for="smartClass">Smart Class</label>
				<select id="smartClass" name="smartClass">
				 	<option value="Yes">Yes</option>
				  	<option value="No">No</option>
				</select> 
				<% for(int i=1;i<=Integer.parseInt(request.getParameter("students"));i++){ %>
					<fieldset> <legend>Student<%=i %></legend>
					 Name <input type="text" name="student<%=i %>"  id="student<%=i %>" >	<br/>
					 Roll Number <input type="text" name="studentRoll<%=i %>"  id="student<%=i %>" >	<br/>
					 Address <input type="text" name="studentAddress<%=i %>"  id="student<%=i %>" >	<br/>
					</fieldset>
				<% } %>
				
				<% for(int i=1;i<=Integer.parseInt(request.getParameter("subjects"));i++){ %>
					<fieldset> <legend>Subject<%=i %></legend>
					 Name <input type="text" name="subject<%=i %>"  id="subject<%=i %>" >	<br/><br/>
					</fieldset>
				<% } %>
				<input type="hidden" name="noOfStudents" value= <%=request.getParameter("students") %> />
				<input type="hidden" name="noOfSubjects" value= <%=request.getParameter("subjects") %> />
				<input type="submit" value="Submit">
			</form>
	
</body>
</html>