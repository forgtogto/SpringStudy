<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<%-- <c:if test="${not empty pageContext.request.userPrincipal }">
<p> is Log-In</p>
</c:if>

<c:if test="${empty pageContext.request.userPrincipal }">
<p> is Log-Out</p>
</c:if> --%>
<h2>
<s:authorize ifAnyGranted="ROLE_USER">
<p>   로그인 되었습니다.</p>
</s:authorize></h2>

<s:authorize ifNotGranted="ROLE_USER">
<p>   로그아웃 되었습니다.</p>
</s:authorize>

<%-- USER ID : ${pageContext.request.userPrincipal.name}<br/> 
USER ID : <s:authentication property="name"/><br/>
<a href="${pageContext.request.contextPath}/j_spring_security_logout">Log Out</a> <br /> --%>

</body>
</html>