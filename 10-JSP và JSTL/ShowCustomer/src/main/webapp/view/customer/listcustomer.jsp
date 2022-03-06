<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-4.6.1-dist\css\bootstrap.css">
</head>
<body>
<div class="headers-region" style="text-align: center;font-size:20px;font-weight: bold
;background-color: #34ce57;color: #0f6674">
    <c:if test="${mess!=null}">
        <p>${mess}</p>
    </c:if>
</div>

<h1 style="text-align: center">Customer List</h1>
<div class="container">
    <a href="/customer?action=add" class="btn btn badge-success">Add New Customer</a>
        <form action="/customer?action=search" method="post" style="float: right">
            <input type="text" name="nameSearch" placeholder="Nhập tên">
            <input type="text" name="emailSearch" placeholder="Nhập email">
            <select name="productIdSearch">
                <option value="">Chọn</option>
                <c:forEach items="${productList}" var="product">
                    <option value="${product.productId}">${product.customerProductName}</option>
                </c:forEach>
            </select>
            <button type="submit">Search</button>
        </form>
<%--<a href="/customer?action=search&nameSearch=a&emailSearch=&productIdSearch="><button>Search 1</button></a>--%>

    <table class="table table-striped" style="text-align: center">
        <tr class="bg-dark text-white">
            <th>STT</th>
            <th>ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Birthday</th>
            <th>Email</th>
            <th>Product</th>
            <th>Address</th>
            <th>Phone Number</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${customerList}" var="customer" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${customer.customerId}</td>
                <td>${customer.name}</td>
                <c:if test="${customer.gender}">
                    <td>Nam</td>
                </c:if>
                <c:if test="${!customer.gender}">
                    <td>Nữ</td>
                </c:if>

                <td>${customer.birthday}</td>
                <td>${customer.email}</td>
                <c:forEach items="${productList}" var="customerProduct">
                    <c:if test="${customerProduct.productId==customer.productId}">
                        <td> ${customerProduct.customerProductName}</td>
                    </c:if>
                </c:forEach>
                <td>${customer.address}</td>
                <td><c:out value="${customer.phoneNumber}"></c:out></td>

                <td>
                    <a href="/customer?action=edit&customerId=${customer.customerId}" class="btn btn badge-primary">Edit</a>
                    <a href="/customer?action=delete&customerId=${customer.customerId}" class="btn btn badge-danger">Delete</a>
                </td>

            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
