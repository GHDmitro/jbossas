<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <%--<link rel="icon" href="../../favicon.ico">--%>

    <title>Singing</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="../pages/css/bootstrap.min.css"/> " rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="<c:url value="../pages/assets/css/ie10-viewport-bug-workaround.css"/> " rel="stylesheet">

    <!-- Custom pages.styles for this template -->
    <link href="<c:url value="../pages/styles/signin.css"/> " rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><![endif]-->
    <script src="<c:url value="../pages/assets/js/ie8-responsive-file-warning.js"/> "></script>
    <script src="<c:url value="../pages/assets/js/ie-emulation-modes-warning.js"/> "></script>

    <!-- HTML5 shim and Respond.pages.jsmymy for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <!--<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>-->
    <!--<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>-->
    <%--<![endif]-->--%>
</head>

<body>

<div class="container">
    <%--<sec:authorize access="!isAuthenticated()">--%>

    <div class="panel-body">

        <form class="form-signin" action="<c:url value="/login"/>" method="post">
            <h3 class="form-signin-heading">Пожалуйста войдите в систему</h3>
            <label for="inputLogin" class="sr-only">Ваш логин</label>
            <input type="text" name="j_username" id="inputLogin" class="form-control" placeholder="Логин" required
                   autofocus>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" name="j_password" id="inputPassword" class="form-control" placeholder="Пароль"
                   required>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Подтвердить</button>
        </form>
        <p class="text-center"><a href="<c:url value="/registrat"/>" role="button">Регистрация</a></p>
    </div>
    <%--</sec:authorize>--%>
</div>
<!-- /container -->


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<c:url value="../pages/assets/js/ie10-viewport-bug-workaround.js"/> "></script>
</body>
</html>
