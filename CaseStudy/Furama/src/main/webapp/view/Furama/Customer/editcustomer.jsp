<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/3/2022
  Time: 10:40 PM
  To change this template use File | Settings | File Templates.
--%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>UpDate Customer</h2>
<p>
    <a href="/home?action=showCustomer">Back to Customer List</a>
</p>
<form method="post">
    <fieldset>
        <legend>Information Customer</legend>
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="customerName" placeholder="Nhập tên"
                           value="${customer.getCustomerName()}"></td>
            </tr>
            <tr>
                <td>Giới Tính</td>
                <td>
                    <input type="radio" name="gender" value="true" checked>Nam
                    <input type="radio" name="gender" value="false">Nữ
                </td>
            </tr>
            <tr>
                <td>Ngày sinh</td>
                <td><input type="date" name="customerBirthday" placeholder="Nhập ngày sinh"
                           value="${customer.getCustomerBirthday()}"></td>
            </tr>
            <tr>
                <td>Code</td>
                <td><input type="text" name="customerCode" placeholder="Nhập code"
                           value="${customer.getCustomerCode()}"></td>
            </tr>
            <tr>
                <td>Type Of Customer</td>
                <td>
                    <select name="typeOfCustomerId">
                        <c:forEach items="${typeOfCustomerList}" var="typeOfCustomer">
                            <c:if test="${typeOfCustomer.typeOfCustomerId==customer.typeOfCustomerId}">
                                <option value="${typeOfCustomer.typeOfCustomerId}">${typeOfCustomer.typeOfCustomerName}</option>

                            </c:if>
                        </c:forEach>
                        <c:forEach items="${typeOfCustomerList}" var="typeOfCustomer">
                            <option value="${typeOfCustomer.typeOfCustomerId}">${typeOfCustomer.typeOfCustomerName}</option>

                        </c:forEach>

                    </select>
                </td>
            </tr>

            <tr>
                <td>Phone Number</td>
                <td><input type="text" name="customerPhoneNumber" placeholder="Nhập số điện thoại"
                           value="${customer.getCustomerPhoneNumber()}"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="customerEmail" placeholder="Nhập email"
                           value="${customer.getCustomerEmail()}"></td>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                <td><input type="text" name="customerAddress" placeholder="Nhập địa chỉ"
                           value="${customer.getCustomerAddress()}"></td>
            </tr>
        </table>
        <button type="submit">Submit</button>
    </fieldset>
</form>
</body>
</html>
