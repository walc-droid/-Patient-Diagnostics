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
                    <div class="row">
                        <a href="/patient/add" class="waves-effect waves-light btn red white-text"><i
                                class="material-icons left">add</i>Add Patient</a>
                    </div>
                    <div class="row">
                        <div class="table-overflow">
                            <table class="highlight centered responsive-table">
                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Name</th>
                                    <th>Surname</th>
                                    <th>Date of birth</th>
                                    <th>Pesel</th>
                                    <th>City</th>
                                    <th>Street</th>
                                    <th>Postcode</th>
                                    <th>House no.</th>
                                    <th>Apartment no.</th>
                                    <th>Phone no.</th>
                                    <th>Email</th>
                                    <th>Medical card</th>
                                    <th>Edit</th>
                                    <th>Delete</th>

                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${patients}" var="pt">
                                    <tr>
                                        <td><c:out value="${pt.id}"/></td>
                                        <td><c:out value="${pt.name}"/></td>
                                        <td><c:out value="${pt.surname}"/></td>
                                        <td><c:out value="${pt.dateOfBirth}"/></td>
                                        <td><c:out value="${pt.pesel}"/></td>
                                        <td><c:out value="${pt.city}"/></td>
                                        <td><c:out value="${pt.street}"/></td>
                                        <td><c:out value="${pt.zipCode}"/></td>
                                        <td><c:out value="${pt.houseNumber}"/></td>
                                        <td><c:out value="${pt.apartmentNumber}"/></td>
                                        <td><c:out value="${pt.phoneNumber}"/></td>
                                        <td><c:out value="${pt.email}"/></td>
                                        <td><a href="/patient/details/${pt.id}" class="tooltipped"
                                               data-position="bottom"
                                               data-tooltip="Medical card"><i class="material-icons">folder_shared</i></a></td>
                                        <td><a href="/patient/edit/${pt.id}" class="tooltipped"
                                               data-position="bottom"
                                               data-tooltip="edit"><i class="material-icons">edit</i></a></td>
                                        <td><a href="/patient/delete/${pt.id}" class="tooltipped"
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
