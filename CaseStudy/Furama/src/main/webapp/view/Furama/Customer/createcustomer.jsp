<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/3/2022
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Add Customer</h2>
<p>
    <a href="/home">Back to Home</a>
</p>
<form action="/home?action=addCustomer" method="post">
    <fieldset>
        <legend>New Customer</legend>
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="customerName" placeholder="Nhập tên"></td>
            </tr>
            <tr>
                <td>Giới Tính</td>
                <td>
                    <input type="radio" name="gender" value="true">Nam
                    <input type="radio" name="gender" value="false">Nữ
                </td>
            </tr>
            <tr>
                <td>Ngày sinh</td>
                <td><input type="date" name="customerBirthday" placeholder="Nhập ngày sinh"></td>
            </tr>
            <tr>
                <td>Type Of Customer</td>
                <td>
                    <select name="typeOfCustomerId">
                        <option value="">Chọn</option>
                        <c:forEach items="${typeOfCustomerList}" var="typeOfCustomer">
                            <option value="${typeOfCustomer.typeOfCustomerId}">${typeOfCustomer.typeOfCustomerName}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Code</td>
                <td><input type="text" name="customerCode" placeholder="Nhập code"></td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td><input type="text" name="customerPhoneNumber" placeholder="Nhập số điện thoại"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="customerEmail" placeholder="Nhập email"></td>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                <td><input type="text" name="customerAddress" placeholder="Nhập địa chỉ"></td>
            </tr>
        </table>
        <button type="submit">Submit</button>
    </fieldset>
</form>
</body>
</html>
