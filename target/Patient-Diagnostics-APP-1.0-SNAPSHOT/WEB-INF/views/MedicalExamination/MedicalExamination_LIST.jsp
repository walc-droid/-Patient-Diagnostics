<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Medical Examinations List</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize.min.css"/>">
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/style1.css"/>">
</head>
<body>
<%@include file="../HomePage/Header.jsp" %>
<main>
    <div class="row row-container">
        <jsp:include page="../HomePage/Navbar.jsp"/>
        <div class="col s3 offset-s3">
            <div class="card">
                <div class="card-content">
                    <h5 class="h4-own center-align"> <i class="small material-icons blue-text prefix">control_point</i>Medical examinations list</h5>
                </div>
            </div>
        </div>
        <div class="col s12 l10">
            <div class="card">
                <div class="card-content">
                    <div class="row">
                        <a href="/medical/add" class="waves-effect waves-light btn red white-text"><i
                                class="material-icons left">add</i>Add Medical examination</a>
                    </div>
                    <div class="row">
                        <div class="table-overflow">
                            <table class="highlight centered responsive-table">
                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Type</th>
                                    <th>Description</th>
                                    <th>Cost</th>
                                    <th>Location</th>
                                    <th>Doctors</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${medical}" var="mE">
                                    <tr>
                                        <td><c:out value="${mE.id}"/></td>
                                        <td><c:out value="${mE.type}"/></td>
                                        <td><c:out value="${mE.description}"/></td>
                                        <td><c:out value="${mE.cost}"/></td>
                                        <td><c:out value="${mE.location}"/></td>
                                        <td><c:out value="${mE.doctorNames}"/></td>
                                        <td><a href="/medical/edit/${mE.id}" class="tooltipped"
                                               data-position="bottom"
                                               data-tooltip="edit"><i class="material-icons">edit</i></a></td>
                                        <td><a href="/medical/delete/${mE.id}" class="tooltipped"
                                               data-position="bottom"
                                               data-tooltip="delete"><i class="material-icons">delete</i></a></td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
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

