<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.Recipe"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.RecipeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	RecipeDAO dao = new RecipeDAO();
	List<Recipe> recipeList = dao.getAllRecipe();
	pageContext.setAttribute("recipeList", recipeList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
			<caption>
				<h2>레시피</h2>
			</caption>
			<tr>
				<td>레시피 이미지</td>
				<td>레시피 이름</td>
				<td>레시피 베이스</td>
				<td>레시피 재료</td>
				<td>레시피 제조방법</td>
			</tr>
			<!-- 2.모든 회원의 이메일(email),전화번호(tel),주소(address)를 출력하시오. -->
			
			<c:forEach var = "rc" items = "${recipeList}">
				<tr>
				<td><img src = '<c:out value="${rc.recipe_img}" />' ></td>
				<td><c:out value="${rc.recipe_name}" /></td>
				<td>
				<c:if test = "${rc.recipe_base eq '10'}">
				<span>맥주</span>
				</c:if >
				<c:if test = "${rc.recipe_base eq '20'}">
				<span>소주</span>
				</c:if >
				<c:if test = "${rc.recipe_base eq '30'}">
				<span>기타</span>
				</c:if >
				
				<c:out value="${rc.recipe_base}" />
				</td>
				<td><c:out value="${rc.recipe_ing}" /></td>
				<td><c:out value="${rc.recipe_how}" /></td>
				</tr>
			</c:forEach>


		</table>

</body>
</html>