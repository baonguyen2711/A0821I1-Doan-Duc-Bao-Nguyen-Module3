<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/3/2022
  Time: 6:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Add Staff</h2>
<p>
    <a href="/home?action=showStaff">Back to Staff List</a>
</p>
<form action="/home?action=addStaff" method="post">
    <fieldset>
        <legend>New Staff</legend>
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="staffName" placeholder="Nhập tên"></td>
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
                <td><input type="date" name="staffBirthday" placeholder="Nhập ngày sinh"></td>
            </tr>
            <tr>
                <td>Code</td>
                <td><input type="text" name="staffCode" placeholder="Nhập code"></td>
            </tr>
            <tr>
                <td>Salary</td>
                <td><input type="text" name="staffSalary" placeholder="Nhập salary"></td>
            </tr>
            <tr>
                <td>Position</td>
                <td>
                    <select name="positionId">
                        <option value="">Chọn</option>
                        <c:forEach items="${positionList}" var="position">
                            <option value="${position.positionId}">${position.positionName}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Level</td>
                <td>
                    <select name="levelId">
                        <option value="">Chọn</option>
                        <c:forEach items="${levelList}" var="level">
                            <option value="${level.levelId}">${level.levelName}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Department</td>
                <td>
                    <select name="departmentId">
                        <option value="">Chọn</option>
                        <c:forEach items="${departmentList}" var="department">
                            <option value="${department.departmentId}">${department.departmentName}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Phone Number</td>
                <td><input type="text" name="staffPhoneNumber" placeholder="Nhập số điện thoại"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="staffEmail" placeholder="Nhập email"></td>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                <td><input type="text" name="staffAddress" placeholder="Nhập địa chỉ"></td>
            </tr>
        </table>
        <button type="submit">Submit</button>
    </fieldset>
</form>
</body>
</html>
