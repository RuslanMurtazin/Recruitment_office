<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Отправить сообщение</title>
<%@include file="/jspf/header.jspf" %>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<link type="text/css"href="/Recruitment_office/css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />

<script type="text/javascript" src="/Recruitment_office/js/jquery-1.7.1.min.js"></script>
<script src="/Recruitment_office/js/jqBootstrapValidation.js"></script>
<%@include file="/jspf/header.jspf" %>

</head>
<body>
 <script>
  $(function () { $("input,select,textarea").not("[type=submit]").jqBootstrapValidation(); } );
</script>
</head>
<body>
<%@include file="/jspf/navbar.jspf" %>
<form action="senderServlet" method="POST">

Введите номер:  <div class="control-group"><div class="controls"> <input class="form-control"
            type="number"  maxlength="11" name="phone"/> </div></div><br />
    Введите текст :  <div class="control-group"><div class="controls"> <input class="form-control"
                type="text"  maxlength="70" name="message" /> </div></div><br />


    <p><input type="submit" value="Отправить"></p>
  </form>
</body>
</html> 