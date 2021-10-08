<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import = "org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.Transaction,com.learners.util.HibernateUtil" %>
<%@ page import = "com.learners.model.LearnerClass,java.util.List" %>
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
	
		LearnerClass learnerClass = (LearnerClass) s.createQuery("from LearnerClass L WHERE L.id = " + request.getParameter("id")).list().get(0);
		
	%>
	<form action="update-class" method="post">
		Class Id <input type="text" name="id" id="id" value= <%= request.getParameter("id") %> style="background: #D3D3D3;" readonly> <br/><br/>
		Class Name <input type="text" name="class_name" id="class_name" value="<%= learnerClass.getName() %>"> 
		<select id="smartClass" name="smartClass">
				 <option value="Yes">Yes</option>
				 <option value="No">No</option>
			</select> 
		<input type="submit" value="Submit">
	</form>
</body>
</html>