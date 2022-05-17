<%@page import="java.net.URLEncoder"%>
<%@page import = "java.io.File" %>
 <%@page import="com.smhrd.domain.Upload"%>
<%@ page import="com.smhrd.domain.UploadDAO" %>
 <%@ page import="java.io.File " %>
 <%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
 <%@ page import="com.oreilly.servlet.MultipartRequest" %>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String derectory = application.getRealPath("/img/");
   String files[] = new File(derectory).list();
   
   for(String file : files){
	   out.write("<a href=\""+ request.getContextPath() + "/downloadAction?file="+
	   URLEncoder.encode(file, "UTF-8") + "\">" + file + "</a><br>"); 
	  
   }
%>
</body>
</html>