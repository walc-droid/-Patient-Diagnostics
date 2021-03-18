<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Registration form</title>
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
                <h4 class="center flow-text h4-own-i">Registration form</h4>
            </div>
            <div class="card-content row-margin0">
                <form:form modelAttribute="register" method="post">
                    <div class="input-field">
                        <i class="material-icons blue-text prefix">account_box</i>
                        <input type="text" name="login" id="login">
                        <label for="login">Login</label>
                    </div>
                    <div class="input-field">
                        <i class="material-icons blue-text prefix">email</i>
                        <input type="email" name="email" id="email">
                        <label for="email">E-mail</label>
                    </div>
                    <div class="input-field">
                        <i class="material-icons blue-text prefix">lock</i>
                        <input type="password" name="password" id="password">
                        <label for="password">Password</label>
                    </div>
                    <div class="input-field">
                        <i class="material-icons blue-text prefix">lock</i>
                        <input type="password" name="confirmedPassword" id="confirmedPassword">
                        <label for="confirmedPassword">Confirm password</label>
                    </div>
                    <div class="input-field">
                        <i class="material-icons  blue-text prefix">account_circle</i>
                        <input type="text" name="name" id="name" class="validate">
                        <label for="name">Name</label>
                    </div>
                    <div class="input-field">
                        <i class="material-icons  blue-text prefix">account_box</i>
                        <input type="text" name="surname" id="surname" class="validate">
                        <label for="surname">Surname</label>
                    </div>

            </div>
            <div class="row row-margin0">
            <div class="card-action">
                <button class="btn col s12 m12 l12 xl12 blue waves-effect waves-light" type="reset">
                    Reset
                </button>
            </div>
            </div>
            <div class="row">
                <div class="card-action">
                    <button class="btn col s12 m12 l12 xl12 blue waves-effect waves-light" type="submit" name="submit">
                        Sign up
                    </button>
                </div>
            </div>
            </form:form>
        </div>
    </div>
</main>

<script type="text/javascript" src="<c:url value="/js/jquery-3.4.1.slim.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/materialize.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/functions.js"/>"></script>
</body>
</html>