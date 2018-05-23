<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login</title>
	</head>
	<body style="font-family: consolas; font-size: 18px;">
		<c:if test="${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message != null}">
			<span style="color: red;">
				<c:out value="${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}"/>
			</span>
		</c:if>
		<form action="<c:url value='j_spring_security_check'/>" method="post">
			<table>
				<tr>
					<td>Username:</td>
					<td><input type="text" name="j_username"/></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="j_password"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="login"/>
					</td>
				</tr>
			</table>
		</form>	
	</body>
</html>








