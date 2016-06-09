<%--
  Created by IntelliJ IDEA.
  User: macbookair
  Date: 30.03.16
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
          <%--<h1 class="text">Добавление продукта в ваш прайс лист</h1>--%>
      </header>
      <section class="row">
        <div class="col-xs-6 col-xs-offset-3">
          <div class="panel panel-default">
            <div class="panel-heading"><h4>Личные данные</h4></div>
            <div class="panel-body">

              <div class="row">
                  <%--<div class="col-md- col-lg-">--%>
                <div class="thumbnail">

                  <c:if test="${refPhoto != null}">
                    <img src="<c:url value="/givePhoto/${refPhoto}"/> "   >
                  </c:if>

                  <%--<form enctype="multipart/form-data" action="<c:url value="/changeOwnData"/> "--%>
                        <%--method="post">--%>
                      <%--<input class="login" type="hidden" name="login"--%>
                      <%--value="<sec:authentication property="principal.username"/>">--%>

                    <div class="form-group-horizontal">
                        <%--<label for="Photo">Загрузить фото</label>--%>
                      <p class="help-block"></p>
                    </div>
                    <div class="caption">
                      <div class="row">
                        <div class="col-xs-5 col-xs-offset-1 ">
                          <ul class="text-center" >
                            <li class="text-area"><h4>Електронная почта: ${email}</h4></li>
                            <li class="text-area"><h4>Телефонный номер: ${telNumber}</h4></li>
                          </ul>
                        </div>


                      </div>

                      <p>
                        <button type="submit" class="btn btn-success">Подтвердить</button>
                        <a href="<c:url value="/home/${refPhoto}"/> " class="btn btn-default"
                           role="button">На главную</a></p>
                    </div>
                  </form>
                </div>
                  <%--</div>--%>
              </div>

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
