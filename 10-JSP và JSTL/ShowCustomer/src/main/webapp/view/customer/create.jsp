<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14/2/2022
  Time: 6:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Add Customer</h2>
<p>
    <a href="/customer">Back to customer list</a>
</p>
<form action="/customer?action=add" method="post">
    <fieldset>
        <legend>New Customer</legend>
    <table>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" placeholder="Nhập tên"></td>
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
            <td><input type="date" name="birthday" placeholder="Nhập ngày sinh"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" placeholder="Nhập email"></td>
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
            <td>Địa chỉ</td>
            <td><input type="text" name="address" placeholder="Nhập địa chỉ"></td>
        </tr>
        <tr>
            <td>Số điện thoại</td>
            <td><input type="text" name="phoneNumber" placeholder="Nhập số điện thoại"></td>
        </tr>
    </table>
    <button type="submit">Submit</button>
    </fieldset>
</form>
</body>
</html>
