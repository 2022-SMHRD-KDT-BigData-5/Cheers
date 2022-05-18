<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.Favorites"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.FavoritesDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
FavoritesDAO dao = new FavoritesDAO();
List<Favorites> favList = dao.getFav();
pageContext.setAttribute("favList", favList);
%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
favorites

<c:forEach var="fav" items="${favList}">
<c:out value="${fav.fav_no}" />
<c:out value="${fav.member_id}" />
<c:out value="${fav.recipe_no}" />
</c:forEach>

</body>
</html>