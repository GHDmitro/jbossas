<%--
  Created by IntelliJ IDEA.
  User: macbookair
  Date: 30.03.16
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <link rel="stylesheet" href="<c:url value="/pages/css/bootstrap.css"/>">
  <link rel="stylesheet" href="<c:url value="/pages/styles/registrat.css"/>">
  <script src="<c:url value="/pages/js/bootstrap.js"/>"></script>

  <title>customer</title>
</head>
<body>
<sec:authorize access="!isAuthenticated()">

  <p class="text-center"><a class="btn btn-lg btn-success" href="<c:url value="/login"/>" role="button">Войти</a></p>

</sec:authorize>
<sec:authorize access="isAuthenticated()">

<div class="container">

  <div class="row" align="center">

    <%--<sec:authorize access="!isAuthenticated()">--%>
      <%--<p><a class="btn btn-lg btn-success" href="<c:url value="/signin" />" role="button">Войти</a></p>--%>
    <%--</sec:authorize>--%>

      <header class="row">
        <h1 class="text">Добавление продукта в ваш прайс лист</h1>
      </header>
      <section class="row">
        <div class="col-xs-6 col-xs-offset-3">
          <div class="panel panel-default">
            <div class="panel-heading"><h4>Новый продукт</h4></div>
            <div class="panel-body">
              <c:if test="${error != null}">
                <div class="row">
                  <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3">
                    <h2 class="text-center"><c:out value="${error}"/></h2>
                  </div>
                </div>
              </c:if>

              <c:if test="${positionOfPrice != null}"></c:if>
              <form enctype="multipart/form-data" action="<c:url value="/addPricePosition"/> " method="post">
                <%--<input class="login" type="hidden" name="login"  value="<sec:authentication property="principal.username"/>">--%>
                <div class="form-group">
                  <label for="name">Название</label>
                  <input type="text" class="form-control" name="name" id="name" placeholder="Название"
                         required>
                </div>
                <div class="form-group">
                  <label for="codeOfModel">Код модели</label>
                  <input type="text" class="form-control" name="codeOfModel" id="codeOfModel" placeholder="Код"
                         required>
                </div>
                <div class="form-group">
                  <label for="description">Описание продукта</label>
                  <input type="text" class="form-control" name="description" id="description" placeholder="описание"
                         required/>
                </div>
                <div class="form-group">
                  <label for="cost">Цена продукта</label>
                  <input type="text" class="form-control" name="cost" id="cost" placeholder="Цена" required/>
                </div>
                <div class="form-group">
                  <label for="capacity">Колличество в наличии</label>
                  <input type="number" class="form-control" name="capacity" id="capacity" placeholder="Колличество" required/>
                </div>
                <div class="form-group">
                  <label for="bookingCondition">Описание условий заказа для покупателя</label>
                  <input type="text" class="form-control" name="bookingCondition" id="bookingCondition" placeholder="Условия заказа" required/>
                </div>
                <div class="form-group">
                  <label for="deliveryCondition">Описание условий доставки для покупателя</label>
                  <input type="text" class="form-control" name="deliveryCondition" id="deliveryCondition" placeholder="Условия доставки" required/>
                </div>

                <div class="form-group-horizontal">
                  <label>Добавление фото продукта</label><br>
                  <input type="file" name="photo" id="Photo" placeholder="Photo" required>
                  <%--<label for="Photo">Загрузить фото</label>--%>
                  <p class="help-block"></p>

                </div>
                  <p>
                    <button type="submit" class="btn btn-success">Добавить в прайс</button>
                    <a href="<c:url value="/home"/>" class="btn btn-default" role="button">На главную</a>
                  </p>
              </form>
            </div>
          </div>
        </div>
      </section>

    <%--<form role="form" class="form-horizontal" action="/addPricePosition" enctype="multipart/form-data" method="post">--%>
      <%--<input class="login" type="hidden" name="login"  value="${login}">--%>
      <%--<div class="price"><input class="price_position" type="text" name="name" placeholder="Name"></div>--%>
      <%--<div class="price"><input class="price_position" type="text" name="codeOfModel" placeholder="Code of model"></div>--%>
      <%--<div class="price"><input class="price_position" type="file" name="photo" placeholder="Photo"></div>--%>
      <%--<div class="price"><input class="price_position" type="text" name="description" placeholder="Description"></div>--%>
      <%--<div class="price"><input class="price_position" type="text" name="cost" placeholder="Cost of product"></div>--%>
      <%--<div class="price"><input class="price_position" type="text" name="bookingCondition" placeholder="booking condition"></div>--%>
      <%--<div class="price"><input class="price_position" type="text" name="deliveryCondition" placeholder="Delivery condition"></div>--%>
      <%--<div class="price"><input class="price_position" type="number" name="capacity" placeholder=""></div>--%>

      <%--<div class="price"><input class="price_position" type="submit" name="Add"></div>--%>
    <%--</form>--%>


    <%--<c:forEach items="${accounts}" var="account">--%>
    <%--<option value="${account.login}">Name: ${account.login} , User age: ${account.accountType.typeName}</option>--%>
    <%--</c:forEach>--%>
  </div>


</div>
</sec:authorize>
</body>
</html>
