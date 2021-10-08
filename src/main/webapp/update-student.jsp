<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.Transaction,com.learners.util.HibernateUtil" %>
<%@ page import = "com.learners.model.Student,java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		SessionFactory factory = HibernateUtil.buildSessionFactory();
	
		Session s = factory.openSession();
	
		Student student = (Student) s.createQuery("from Student S WHERE S.id = " + request.getParameter("id")).list().get(0);
	%>
	
	<form action="update-student" method="post">
		Student Id <input type="text" name="id" id="id" value= <%= request.getParameter("id") %> style="background: #D3D3D3;" readonly> <br/><br/>
		Student Name <input type="text" name="student_name" id="student_name" value="<%= student.getName() %>">
		Student Roll Number <input type="text" name="student_rollNo" id="student_rollNo" value="<%= student.getRollNo() %>">
		Student Address <input type="text" name="student_address" id="student_address" value="<%= student.getAddress() %>">
		
		<input type="submit" value="Submit">
	</form> 
	

</body>
</html>