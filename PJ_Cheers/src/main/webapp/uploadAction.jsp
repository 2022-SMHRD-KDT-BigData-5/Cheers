 <%@page import="java.util.Enumeration"%>
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
	String directory = "C:/PJ_Cheers/Upload"; //보안취약성때문에 외부경로로 지정 
	int maxSize = 1024 * 1024 * 100;
	String encording ="UTF-8";
	
	MultipartRequest multipartrequest = new MultipartRequest(request,directory,maxSize,encording, new DefaultFileRenamePolicy());

	Enumeration fileNames = multipartrequest.getFileNames();
	while(fileNames.hasMoreElements()){
		String parameter = (String) fileNames.nextElement();
		
		String fileName= multipartrequest.getOriginalFileName(parameter);
		String fileRealName = multipartrequest.getFilesystemName(parameter);
		
	    Upload u_vo = new Upload(fileName,fileRealName);
		UploadDAO dao = new UploadDAO();
		int cnt = dao.insertUpload(u_vo);	  
		
		if(fileName==null) continue;
		
			if(!fileName.endsWith(".jpg") && !fileName.endsWith(".png") && !fileName.endsWith(".bmp")){
			File file = new File(directory + fileRealName);
			file.delete();
			out.print("업로드 할 수 없는 확장자입니다."); // 이미지파일 확장자가 아닌 확장자를 업로드 하게 되면 업로드할수없게됨. 근데 db엔 들어가짐... 
				
		}else{
		      out.write("파일명"+fileName+"<br>");
		      out.write("실제파일명"+fileRealName+"<br>");
		      	
		}
		
	}
	


	
	%>

</body>
</html>