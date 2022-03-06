<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17/2/2022
  Time: 11:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/customer?action=delete" method="post">
<fieldset>
    <legend>Customer information</legend>
    <table>
        <tr>
            <td>ID:</td>
            <td>${customer.getCustomerId()}</td>
        </tr>
        <tr>
            <td>Name:</td>
            <td>${customer.getName()}</td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td>${customer.isGender()}</td>
        </tr>
        <tr>
            <td>Birthday:</td>
            <td>${customer.getBirthday()}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${customer.getEmail()}</td>
        </tr>
        <tr>
            <td>Product</td>
                <c:forEach items="${productList}" var="customerProduct">
                <c:if test="${customerProduct.productId==customer.productId}">
            <td> ${customerProduct.customerProductName}</td>
            </c:if>
            </c:forEach>
        </tr>
        <tr>
            <td>Address:</td>
            <td>${customer.getAddress()}</td>
        </tr>
        <tr>
            <td>Phone Number:</td>
            <td>${customer.getPhoneNumber()}</td>
        </tr>
    </table>
</fieldset>
<p>
    <input type="hidden" name="customerId" value="${customer.getCustomerId()}">
    <button onclick="return confirm('Are you sure you want to delete [${customer.getName()}]?')">Delete</button>
</p>
<p>
    <a href="/customer">Back to customer list</a>
</p>
</form>
</body>
</html>
