<%--
  Created by IntelliJ IDEA.
  User: walcu
  Date: 13.03.2021
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col s12 m4 l2">
    <div class="card horizontal white">
        <div class="card-image">
            <img src="/images/baseline_account_box_black_48dp.png">
        </div>
        <div class="card-content">

        </div>
    </div>

    <div class="collection collection-own">

        <a href="/" class="collection-item collection-item-own"><i
                class="material-icons">home</i><span class="black-text">Home</span></a>
        <a href="/patient/list" class="collection-item collection-item-own text-black-50"><i
                class="material-icons">accessibility</i><span class="black-text">Patients</span></a>
        <a href="/visit/list" class="collection-item collection-item-own text-black-50"><i
                class="material-icons">list_alt</i><span class="black-text">Visits</span></a>
        <a href="/medical/list" class="collection-item collection-item-own text-black-50"><i
                class="material-icons">control_point</i><span class="black-text">Examinations</span></a>

    </div>

</div>
