<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>New Group</title>
    <link rel="stylesheet" href="<c:url value="/pages/css/bootstrap.css"/>">
    <link rel="stylesheet" href="<c:url value="/pages/styles/registrat.css"/>">
    <script src="<c:url value="/pages/js/bootstrap.js"/>"></script>

</head>
<body>
<div class="container-fluid">

    <header class="row">
        <h1 class="text">Добавление аккаунта</h1>
    </header>
    <section class="row">
        <div class="col-xs-6 col-xs-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading"><h4>Регистрация</h4></div>
                <div class="panel-body">
                    <form enctype="multipart/form-data" action="<c:url value="/addAccount"/> " method="post">
                        <div class="form-group">
                            <label for="login">Логин</label>
                            <input type="text" class="form-control" name="login" id="login" placeholder="Логин"
                                   required>
                        </div>
                        <div class="form-group">
                            <label for="pass">Пароль</label>
                            <input type="password" class="form-control" name="pass" id="pass" placeholder="Пароль"
                                   required>
                        </div>
                        <div class="form-group">
                            <label for="email">Електронная почта</label>
                            <input type="email" class="form-control" name="email" id="email" placeholder="email"
                                   required/>
                        </div>
                        <div class="form-group">
                            <label for="tel">Номер  телефона</label>
                            <input type="tel" class="form-control" name="telNumber" id="tel" placeholder="Номер телефона" required/>
                        </div>
                        <div class="form-group-horizontal">
                            <label>Тип аккаунта</label><br>
                            <input type="radio" name="type" value="customer" id="type" required>
                            <label for="type">Продавец</label>
                            <input type="radio" name="type" value="client" id="type1" required>
                            <label for="type1">Покупатель</label>

                            <p class="help-block"></p>
                        </div>
                        <p>
                        <button type="submit" class="btn btn-success">Подтвердить регистрацию</button>
                        <a href="<c:url value="/home"/>" class="btn btn-default" role="button">На главную</a>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </section>

</div>
</body>
</html>