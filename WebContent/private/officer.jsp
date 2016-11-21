<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="/jspf/header.jspf" %>
</head>
<body>
<%@include file="/jspf/navbar.jspf" %>

 <div class="container">

      <div class="starter-template">
      <img src="/Recruitment_office/img/vp.jpg" class="img-fluid" alt="¬£¬à¬Ú¬ß¬ã¬Ü¬à¬Ö ¬á¬â¬Ú¬Ó¬Ö¬ä¬ã¬ä¬Ó¬Ú¬Ö" width="250">
        <h1>¬©¬Õ¬â¬Ñ¬Ó¬Ú¬ñ ¬Ø¬Ö¬Ý¬Ñ¬ð, ¬ä¬à¬Ó¬Ñ¬â¬Ú¬ë ¬±¬à¬Ý¬Ü¬à¬Ó¬ß¬Ú¬Ü!</h1>
        
        <form action="OfficerController">
         <input type="hidden" name="action"   value="Show" />
        <button type="submit" class="btn btn-success">¬±¬â¬à¬ã¬Þ¬à¬ä¬â ¬ã¬á¬Ú¬ã¬Ü¬Ñ ¬Ò¬à¬Û¬è¬à¬Ó</button>
        </form>
      </div>

    </div>
</body>
</html>