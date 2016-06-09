<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: macbookair
  Date: 12.05.16
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
  <title>changePage</title>
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

</head>
<body>
<sec:authorize access="hasRole('customer')">
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

    </div>
    <!-- /.container -->
  </nav>
<div class="container marketing">


  <hr class="featurette-divider">
  <form enctype="multipart/form-data" action="<c:url value="/changePositionPost"/> " method="post">
  <div class="row featurette">
    <input type="hidden" name="id" value="${position.id}"/>

    <div class="col-md-7 col-md-push-5">

      <ul>
        <%--Here will name of positioin from product--%>
        <li style="list-style-type: none ">
          <ul>
            <li><h3 class="featurette-heading"><c:out value="${position.product.name}"/></h3></li>
            <li style="list-style-type: none "><input type="text" class="form-control" name="name" placeholder="изменить название"></li>
          </ul>
        </li>
        <%--Here will be code of position from product--%>
        <li style="list-style-type: none ">
          <ul>
            <li><h4 class="text-muted" ><c:out value="${position.product.codeOfModel}"/></h4></li>
            <li style="list-style-type: none"><input type="text" class="form-control" name="codeOfModel"  placeholder="изменить модель"></li>
          </ul>
        </li>
        <%--Here will be decription from position--%>
        <li style="list-style-type: none ">
          <ul>
           <li><p class="lead"><c:out value="${position.product.description}"/></p></li>
           <li style="list-style-type: none"><input type="text" class="form-control" name="description"  placeholder="изменить описание"/></li>
          </ul>
        </li>

          <li style="list-style-type: none ">
            <ul>
             <li><p class="lead"><c:out value="${position.cost}"/></p></li>
             <li style="list-style-type: none"><input type="text" class="form-control" name="cost"  placeholder="изменить цену"/></li>
            </ul>
          </li>

          <li style="list-style-type: none ">
            <ul>
             <li><p class="lead"><c:out value="${position.product.amount}"/> </p></li>
             <li style="list-style-type: none"><input type="number" class="form-control" name="amount" placeholder="изменить колличество"/></li>
            </ul>
          </li>
      </ul><br><br>

      <p class="text-center">
        <button type="submit" class="btn btn-success">Изменить позицию</button>
        <a href="<c:url value="/home"/>" class="btn btn-default" role="button">На главную</a>
      </p>
    </div>
    <div class="col-md-5 col-md-pull-7">
      <img class="featurette-image img-responsive center-block" src="<c:url value="/givePhoto/${position.product.photo}"/> "
           alt="Изображение загружается"><br><br>
      <input type="file" name="photo" id="Photo" placeholder="Photo">

    </div><br>



  </div>
  </form>

  <hr class="featurette-divider">

  <!-- /END THE FEATURETTES -->


  <!-- FOOTER -->
  <footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <%--<p>&copy; 2015 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>--%>
  </footer>
</div>
</sec:authorize>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.pages.jsmy "></script>
<script>window.jQuery || document.write('<script src="/pages/assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="<c:url value="../pages/js/bootstrap.min.js"/> "></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="<c:url value="../pages/assets/js/ie10-viewport-bug-workaround.js"/> "></script>
<script src="<c:url value="../pages/jsmy/offcanvas.js"/> "></script>

</body>
</html>
