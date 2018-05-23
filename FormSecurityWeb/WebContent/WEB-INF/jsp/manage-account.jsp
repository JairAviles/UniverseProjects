<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Manage Profile</title>
	</head>
	<body style="font-family: consolas;font-size: 18px">
		<p align="right">
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<i>${pageContext.request.userPrincipal.name}</i> | 
				<a href="<c:url value='j_spring_security_logout'/>">logout</a>
			</c:if>
		</p>
		<br/>
		<p align="left">
			You can manage account settings
		</p>
	</body>
</html>






