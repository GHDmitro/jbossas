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

    <title>Off Canvas Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="../pages/css/bootstrap.min.css"/> " rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="<c:url value="../pages/assets/css/ie10-viewport-bug-workaround.css"/> " rel="stylesheet">

    <!-- Custom pages.styles for this template -->
    <link href="<c:url value="../pages/styles/offcanvas.css"/> " rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><![endif]-->
    <script src="<c:url value="../pages/assets/js/ie8-responsive-file-warning.js "/> "></script>
    <script src="<c:url value="../pages/assets/js/ie-emulation-modes-warning.js"/> "></script>

    <!-- HTML5 shim and Respond.pages.jsmymy for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <!--<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>-->
    <!--<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>-->
    <%--<![endif]-->--%>
</head>

<body>
<sec:authorize access="!isAuthenticated()">

    <p class="text-center">
        <ul>
            <li><h2>Вы не зарегистрированны, попробуйте ввести пароль снова либо зарегистрируйтесь!</h2></li>
            <li><a class="btn btn-lg btn-success" href="<c:url value="/login"/>" role="button">Войти</a></li>
        </ul>
    </p>

</sec:authorize>
<sec:authorize access="isAuthenticated()">
    <nav class="navbar navbar-fixed-top navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- <a class="active" href="#">Прайс лист</a> -->
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <%--<li class="active"><a href="#">Прайс лист</a></li>--%>
                    <sec:authorize access="hasRole('customer')">
                    <li><a href="<c:url value="/addNewPosition"/> ">Добавить позицию</a></li>
                    <li><a href="<c:url value="/bookingPage"/> ">Заказы</a></li>
                        <li><a href="<c:url value="/ownData"/> ">Личные данные пользователя</a></li>
                    </sec:authorize>
                    <sec:authorize access="hasRole('client')">
                        <li><a href="<c:url value="/ownData/${login}"/> ">Личные данные пользователя</a></li>
                    </sec:authorize>

                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <%--<li><p class="text"><sec:authentication property="principal.username"/></p></li>--%>
                        <sec:authorize access="hasRole('client')">
                            <li><a href="<c:url value="/home"/> ">К списку продавцов</a></li>
                        </sec:authorize>
                    <li><a href="<c:url value="/logout"/>">Вийти</a></li>
                    <!-- <li><a href="#">Войти</a></li> -->
                </ul>
            </div>
            <!-- /.nav-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- /.navbar -->


    <%--<option value="${account.login}">Name: ${account.login} , User age: ${account.pass}</option>--%>

    <div class="container">
        <div class="row row-offcanvas row-offcanvas-right">

            <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
                <p class="pull-right visible-xs">
                    <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
                </p>
                <!-- <div class="page-header"> -->
                <img class="page-header" style="margin-top : 0" src="<c:url value="/pages/images/header.jpg"/> " height="250" width="1150">
                <!--  <h1>Hello, world!</h1>
                 <p>This is an example to show the potential of an offcanvas layout pattern in Bootstrap. Try some responsive-range viewport sizes to see it in action.</p> -->
                <!-- </div> -->
                <!--           <div class="row">
                            <div class="col-xs-6 col-lg-4">
                              <h2>Heading</h2>
                              <div class="col-md-5">
                              <img class="featurette-image img-responsive center-block" src="img/header.jpg.jpg" height="960" width="1280" alt="Изображение загружается">
                              </div>
                              <! <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                            </div> -->
            </div>
        </div>
    </div>
    <c:forEach items="${listPositions}" var="position">

    <div class="container marketing">


        <hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7 col-md-push-5">
                <ul>
                    <%--Here will name of positioin from product--%>
                    <li><h3 class="featurette-heading"><c:out value="Название:  ${position.product.name}"/></h3></li>
                        <%--Here will be code of position from product--%>
                    <li><h4 class="text-muted"><c:out value="Модель:  ${position.product.codeOfModel}"/></h4></li>

                        <li><h4 class="text-muted"><c:out value="Цена:  ${position.cost}"/></h4></li>

                        <%--Here will be decription from position--%>
                    <li><p class="lead"><c:out value="Описание:   ${position.product.description}"/></p></li>
                        <c:if test="${position.bookingCondition != null}">
                            <li><p class="lead"> <c:out value="Уточнения для заказов:   ${position.bookingCondition}"/> </p></li>
                        </c:if>
                        <c:if test="${position.deliveryCondition != null}">
                            <li><p class="lead"> <c:out value="Уточнение для доставки:   ${position.deliveryCondition}"/></p></li>
                        </c:if>
                        <c:if test="${position.id != 0}">
                        <sec:authorize access="hasRole('customer')">

                                <li><p class="lead"><c:out value="Колличество:   ${position.product.amount}"/> </p> </li>
                                <li><p><a class="btn btn-default" href="<c:url value="/changePosition/${position.id}"/> " role="button" style="width: 110px">Изменить &raquo;</a></p></li>
                                <li><p><a class="btn btn-default" href="<c:url value="/deletePosition/${position.id}"/> " role="button" style="width: 110px" >Удалить &raquo;</a></p></li>

                        </sec:authorize>
                        <sec:authorize access="hasRole('client')">
                            <form action="<c:url value="/bookingPosition"/> " method="post">
                                <input type="hidden" name="positionID" value="${position.id}"/>
                                <input type="number" name="capacity" style="width: 50px"/>
                                <button type="submit" class="btn btn-success">Заказать</button>
                            </form>
                        </sec:authorize>
                        </c:if>
                    <%--<li><form action="<c:url value="/changePosition"/>" method="post">--%>
                        <%--&lt;%&ndash;<input type="hidden" name="">&ndash;%&gt;--%>
                    <%--</form> </li>--%>

                    <%--<li><form action="<c:url value="/deletePosition"/>" method="post">--%>
                        <%--<input type="hidden" name="positionId" value="${}">--%>
                    <%--</form>  </li>--%>
                </ul>

            </div>
            <div class="col-md-5 col-md-pull-7">
                <img class="featurette-image img-responsive center-block" width="350" height="350" src="<c:url value="/givePhoto/${position.product.photo}"/> "
                     alt="Изображение загружается">

            </div><br>
            <%--<div class="panel panel-center">--%>
                <%--<div class="panel-body">--%>
                    <%--<form action="#" method="post">--%>
                        <%--<textarea class="form-control" placeholder="комментарий"></textarea>--%>
                    <%--</form>--%>
                    <%--&lt;%&ndash;сюда подтягивается foreach&ndash;%&gt;--%>
                    <%--<p>Все коменти</p>--%>
                <%--</div>--%>
            <%--</div>--%>

        </div>

        <!--   <hr class="featurette-divider"> -->

        <!-- <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-responsive center-block" data-src="holder.pages.jsmymy/500x500/auto" alt="Generic placeholder image">
          </div>
        </div> -->

        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->


        <!-- FOOTER -->
        <footer>
            <p class="pull-right"><a href="#">Back to top</a></p>
                <%--<p>&copy; 2015 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>--%>
        </footer>
    </div>
    </c:forEach>
</sec:authorize>
<!-- </div> --><!-- /.container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.pages.jsmy "></script>
<script>window.jQuery || document.write('<script src="/pages/assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="<c:url value="../pages/js/bootstrap.min.js"/> "></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<c:url value="../pages/assets/js/ie10-viewport-bug-workaround.js"/> "></script>
<script src="<c:url value="../pages/jsmy/offcanvas.js"/> "></script>

</body>
</html>
