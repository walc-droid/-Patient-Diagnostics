<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Patients List</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize.min.css"/>">
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/style1.css"/>">
</head>
<body>
<%@include file="../HomePage/header.jsp" %>
<main>
    <div class="row row-container">
        <jsp:include page="../HomePage/navbar.jsp"/>
        <div class="col s3 offset-s3">
            <div class="card">
                <div class="card-content">
                    <h5 class="h4-own center-align"> <i class="small material-icons blue-text prefix">accessibility</i>Add new patient</h5>
                </div>
            </div>
        </div>
        <div class="col s12 l10">
            <div class="card">
                <form method="post" action="/patient/add">
                    <div class="row">
                        <div class="card-content">

                            <div class="input-field col m12 l6">
                                <i class="material-icons prefix blue-text">account_circle</i>
                                <input id="name" type="text" name="name" required>
                                <label for="name">Name</label>
                            </div>


                        </div>
                    </div>

                    <button class="btn waves-effect waves-light right" type="submit">
                        Save <i class="material-icons right">send</i>
                    </button>
                </form>
            </div>
        </div>
</main>




<script type="text/javascript" src="<c:url value="/js/jquery-3.4.1.slim.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/materialize.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/functions.js"/>"></script>
</body>
</html>
