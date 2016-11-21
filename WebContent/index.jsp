<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Добро пожаловать, призывник!</title>
<%@include file="/jspf/header.jspf" %>
</head>
<body>
<%@include file="/jspf/navbar.jspf" %>
    <div class="container">

      <div class="starter-template">
      <img src="img/voenkom.jpg" class="img-fluid" alt="voenkom" width="200">
        <h1>Ну здравствуй, рядовой.</h1>
        <p class="lead">Наше скромное приложение определит твою дальнейшую судьбу.</p>
        <form action="UserController">
         <input type="hidden" name="action"   value="insert" />
        <button type="submit" class="btn btn-success">Ввести данные</button>
        </form>
        <br>
        <form action="ShowAllUsers">
         <input type="hidden" name="action"   value="Show" />
        
        </form>
        <blockquote class="blockquote">
  <p class="mb-0"><em>
"Мир и свобода. Доблесть и доброта. Все кажется просто, если по-настоящему. Когда выше страха, быстрее скорости звука, из последних сил и пределам возможного вопреки. Быть смелым - значит мыслить, сильным - значит духом. Для нас безопасность - это глагол. Преданность, честь и ответственность. Мы верим в простые истины и выбираем жить достойно. Мы вместе, чтобы побеждать и беречь, прикрывать и не жалеть себя. Не ради славы, но во имя жизни и мира, и свободы. Доблестью и добротой."
</em>
</p>  
</blockquote>       
        <img src="img/logo.png" class="img-fluid" alt="logo" width="200">
              </div>
    </div>
</body>
</html>