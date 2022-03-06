<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/3/2022
  Time: 9:06 AM
  To change this template use File | Settings | File Templates.
--%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Delete Customer</h2>
<p>
    <a href="/home?action=showCustomer">Back to Customer List</a>
</p>
<form method="post">
    <fieldset>
        <legend>Information Customer</legend>
        <table>
            <tr>
                <td>Name</td>
                <td>${customer.getCustomerName()}</td>
            </tr>
            <tr>
                <td>Giới Tính</td>
                <td>${customer.isGender()}</td>
            </tr>
            <tr>
                <td>Ngày sinh</td>
                <td>${customer.getCustomerBirthday()}</td>
            </tr>
            <tr>
                <td>Code</td>
                <td>${customer.getCustomerCode()}</td>
            </tr>
            <tr>
                <td>Type Of Customer</td>
                <c:forEach items="${typeOfCustomerList}" var="typeOfCustomer">
                    <c:if test="${typeOfCustomer.typeOfCustomerId==customer.typeOfCustomerId}">
                        <td> ${typeOfCustomer.typeOfCustomerName}</td>
                    </c:if>
                </c:forEach>
            </tr>

            <tr>
                <td>Phone Number</td>
                <td>${customer.getCustomerPhoneNumber()}</td>
            </tr>
            <tr>
                <td>Email</td>
                <td>${customer.getCustomerEmail()}</td>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                <td>${customer.getCustomerAddress()}</td>
            </tr>
        </table>
        <button type="submit" onclick="return confirm('Are you sure you want to delete [${customer.getCustomerName()}]?')"
        >Submit</button>
    </fieldset>
</form>
</body>
</html>
