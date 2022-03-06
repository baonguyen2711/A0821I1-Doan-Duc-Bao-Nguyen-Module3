<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14/2/2022
  Time: 8:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
    <a href="/customer">Back to customer list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Customer information</legend>
        <table>
            <tr>
                <td><label for="txtname">Name</label></td>
                <td>
                    <input id="txtname" type="text" name="name" placeholder="Nhập tên"
                           value="${customer.getName()}">

                </td>
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
                <td><input type="date" name="birthday" placeholder="Nhập ngày sinh"
                           value="${customer.getBirthday()}"></td>
            </tr>
            <td>Email</td>
            <td><input type="text" name="email" placeholder="Nhập email"
                       value="${customer.getEmail()}"></td>
            </tr>
            <tr>
                <td>Product</td>
                <td>
                    <select name="productId">
                        <option value="">Chọn</option>
                        <c:forEach items="${productList}" var="product">
                            <option value="${product.productId}">${product.customerProductName}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label for="txtaddress">Địa chỉ</label></td>
                <td>
                    <input id="txtaddress" type="text" name="address" placeholder="Nhập địa chỉ"
                           value="${customer.getAddress()}">
                </td>
            </tr>
            <tr>
                <td><label for="txtsdt">Số điện thoại</label></td>
                <td>
                    <input id="txtsdt" type="text" name="phoneNumber" placeholder="Nhập số điện thoại"
                           value="${customer.getPhoneNumber()}">
                </td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit">Submit</button></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
