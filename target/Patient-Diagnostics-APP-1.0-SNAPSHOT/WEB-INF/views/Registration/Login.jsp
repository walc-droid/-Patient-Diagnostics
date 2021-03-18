<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Sign In</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize.min.css"/>">
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/login.css"/>">
</head>
<body class="teal">
<main>
    <div class="container row">
        <div class="col m8 offset-m3 l8 offset-l3 xl6 offset-xl3 s12 offset-s3 card card-login z-depth-4">
            <div class="card-title card-title-login blue lighten-1">
               <h4 class="center flow-text h4-own-i">Sign in to Patients-diagnostics-web-app</h4>
            </div>
            <div class="card-content row-margin0">
                <form action="/login" method="post">
                    <c:if test="${wrong}">
                        <div class="row red-text center-align">
                            <h5 class="h4-own">Wrong login or password!</h5>
                        </div>
                    </c:if>
                    <div class="input-field">
                        <i class="material-icons  blue-text prefix">account_box</i>
                        <input type="text" name="login" id="login" class="validate" required>
                        <label for="login">Login</label>
                    </div>
                    <div class="input-field">
                        <i class="material-icons blue-text prefix">lock</i>
                        <input type="password" name="password" id="password" required>
                        <label for="password">Password</label>
                    </div>
                    <div class="card-action">
                        <button class="btn col s12 m12 l12 xl12 blue waves-effect waves-light" type="submit" name="submit">
                            Sign in
                        </button>
                    </div>
                </form>
            </div>
            <div class="card-content row-margin0">
                <h4 class="center flow-text">Don't have an account yet? Click <a href="/register">here</a> to sign up.</h4>
            </div>
        </div>
    </div>
</main>

<script type="text/javascript" src="<c:url value="/js/jquery-3.4.1.slim.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/materialize.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/functions.js"/>"></script>
</body>
</html>