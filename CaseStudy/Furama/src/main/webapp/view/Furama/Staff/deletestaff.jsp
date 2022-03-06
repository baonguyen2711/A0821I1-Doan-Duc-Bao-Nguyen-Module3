<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/3/2022
  Time: 10:08 PM
  To change this template use File | Settings | File Templates.
--%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Delete Staff</h2>
<p>
    <a href="/home?action=showStaff">Back to Staff List</a>
</p>
<form method="post">
    <fieldset>
        <legend>Information Staff</legend>
        <table>
            <tr>
                <td>Name</td>
                <td>${staff.getStaffName()}</td>
            </tr>
            <tr>
                <td>Giới Tính</td>
                <td>${staff.isGender()}</td>
            </tr>
            <tr>
                <td>Ngày sinh</td>
                <td>${staff.getStaffBirthday()}</td>
            </tr>
            <tr>
                <td>Code</td>
                <td>${staff.getStaffCode()}</td>
            </tr>
            <tr>
                <td>Salary</td>
                <td>${staff.getStaffSalary()}</td>
            </tr>
            <tr>
                <td>Position</td>
                <c:forEach items="${positionList}" var="position">
                    <c:if test="${position.positionId==staff.positionId}">
                        <td>${position.positionName}</td>
                    </c:if>
                </c:forEach>
            </tr>
            <tr>
                <td>Level</td>
                <c:forEach items="${levelList}" var="level">
                    <c:if test="${level.levelId==staff.levelId}">
                        <td>${level.levelName}</td>
                    </c:if>
                </c:forEach>

            </tr>
            <tr>
                <td>Department</td>
                <c:forEach items="${departmentList}" var="department">
                    <c:if test="${department.departmentId==staff.departmentId}">
                        <td>${department.departmentName}</td>

                    </c:if>
                </c:forEach>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td>${staff.getStaffPhoneNumber()}</td>
            </tr>
            <tr>
                <td>Email</td>
                <td>${staff.getStaffEmail()}</td>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                <td>${staff.getStaffAddress()}</td>
            </tr>
        </table>
        <button type="submit" onclick="return confirm('Are you sure you want to delete [${staff.getStaffName()}]?')">Submit</button>
    </fieldset>
</form>
</body>
</html>
