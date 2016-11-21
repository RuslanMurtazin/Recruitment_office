<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head> 
 
<title>¬³¬á¬Ú¬ã¬à¬Ü ¬Ó¬ã¬Ö¬ç ¬á¬à¬Ý¬î¬Ù¬à¬Ó¬Ñ¬ä¬Ö¬Ý¬Ö¬Û</title>
<%@include file="/jspf/header.jspf" %>
</head>
<body>
<%@include file="/jspf/navbar.jspf" %>

    <div class="container">

      <div class="starter-template">
      
        <p class="lead">¬°¬Ù¬ß¬Ñ¬Ü¬à¬Þ¬î¬ä¬Ö¬ã¬î ¬ã ¬ß¬à¬Ó¬à¬Ò¬â¬Ñ¬ß¬è¬Ñ¬Þ¬Ú ¬Ú ¬ã¬Õ¬Ö¬Ý¬Ñ¬Û¬ä¬Ö ¬á¬â¬Ñ¬Ó¬Ú¬Ý¬î¬ß¬í¬Û ¬Ó¬í¬Ò¬à¬â!</p>
        
      </div>

    </div>
    <table class = "table table-striped" border=1>
        <thead>
            <tr>
                <th>User Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>DOB</th>
                <th>Email</th>
                <th>Height</th>
                <th>Weight</th>
                <th>Category</th>
                <th>Arms</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.userid}" /></td>
                    <td><c:out value="${user.firstName}" /></td>
                    <td><c:out value="${user.lastName}" /></td>
                    <td><fmt:formatDate pattern="yyyy-MMM-dd" value="${user.dob}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.height}" /></td>
                    <td><c:out value="${user.weight}" /></td>
                    <td><c:out value="${user.category}" /></td>
                    <td><c:out value="${user.arms}" /></td>                    
                    <td><a href="OfficerController?action=edit&userId=<c:out value="${user.userid}"/>">Decision</a></td>
                    <td><a href="OfficerController?action=delete&userId=<c:out value="${user.userid}"/>">Delete from base</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <form action="OfficerController">
    <input type="hidden" name="action"   value="insert" />
        <button type="submit" class="btn btn-success">¬¥¬à¬Ò¬Ñ¬Ó¬Ú¬ä¬î ¬á¬à¬Ý¬î¬Ù¬à¬Ó¬Ñ¬ä¬Ö¬Ý¬ñ</button>
        </form>
</body>
</html>