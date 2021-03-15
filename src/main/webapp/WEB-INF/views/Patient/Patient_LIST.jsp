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
                <h5 class="h4-own center-align"> <i class="small material-icons blue-text prefix">accessibility</i>Patients list</h5>
            </div>
          </div>
        </div>
        <div class="col s12 l10">
            <div class="card">
                <div class="card-content">
                    <a href="/patient/add" class="waves-effect waves-light btn red white-text"><i
                            class="material-icons left">add</i>Add Patient</a>
                    <div class="table-overflow">
                        <table class="highlight centered responsive-table">
                            <thead>
                            <tr>
                                <th>id</th>
                                <th>Name</th>
                                <th>Surname</th>
                                <th>Date of birth</th>
                                <th>City</th>
                                <th>Street</th>
                                <th>Zip-Code</th>
                                <th>House number</th>
                                <th>Apartment number</th>
                                <th>Phone number</th>
                                <th>Email</th>
                                <th>Medical Details</th>
                                <th>Options</th>
                            </tr>
                            </thead>
                            <tbody>
                                    <td>TEST</td>
                                    <td>TEST</td>
                                    <td>TEST</td>
                                    <td>TEST</td>
                                    <td>TEST</td>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>




<script type="text/javascript" src="<c:url value="/js/jquery-3.4.1.slim.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/materialize.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/functions.js"/>"></script>
</body>
</html>
