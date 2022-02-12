<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/2/2022
  Time: 9:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-4.6.1-dist\css\bootstrap.css">
</head>
<body>
<h1 style="text-align: center">Customer List</h1>
<div class="container">
<table class="table table-striped">
    <tr class="bg-dark text-white">
        <th>ID</th>
        <th>Name</th>
        <th>Gender</th>
        <th>Birthday</th>
        <th>Address</th>
        <th>Phone Number</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${list}" var="customer" varStatus="status">
    <tr>
        <td>${customer.id}</td>
        <td>${customer.name}</td>
        <c:if test="${customer.gender}">
            <td>Nam</td>
        </c:if><c:if test="${!customer.gender}">
            <td>Nữ</td>
        </c:if>

        <td>${customer.birthday}</td>
        <td>${customer.address}</td>
        <td><c:out value="${customer.sdt}"></c:out></td>

        <td><button class="btn btn badge-primary">Edit</button>
        <button class="btn btn badge-danger">Delete</button></td>

    </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
