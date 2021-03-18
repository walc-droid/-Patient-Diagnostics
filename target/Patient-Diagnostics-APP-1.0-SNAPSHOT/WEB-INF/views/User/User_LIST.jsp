<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Registered doctors</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/materialize.min.css"/>">
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/style.css"/>">
</head>
<body>
<%@include file="../HomePage/Header.jsp" %>
<main>
    <div class="row row-container">
        <jsp:include page="../HomePage/Navbar.jsp"/>
        <div class="col s3 offset-s3">
            <div class="card">
                <div class="card-content">
                    <h5 class="h4-own center-align"> <i class="small material-icons blue-text prefix">person</i>Registered doctors</h5>
                </div>
            </div>
        </div>
        <div class="col s12 l10">
            <div class="card">
                <div class="card-content">
                    <div class="row">
                        <div class="table-overflow">
                            <table class="highlight centered responsive-table">
                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Name</th>
                                    <th>Surname</th>
                                    <th>E-mail</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${userList}" var="uL">
                                    <tr>
                                        <td><c:out value="${uL.id}"/></td>
                                        <td><c:out value="${uL.name}"/></td>
                                        <td><c:out value="${uL.surname}"/></td>
                                        <td><c:out value="${uL.doctorLoginDetails.email}"/></td>
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










