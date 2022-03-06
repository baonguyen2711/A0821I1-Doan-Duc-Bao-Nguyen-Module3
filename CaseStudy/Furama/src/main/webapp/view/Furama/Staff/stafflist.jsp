<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/2/2022
  Time: 11:05 PM
  To change this template use File | Settings | File Templates.
--%>
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
<h1 style="text-align: center">Staff List</h1>
<p>
    <a href="/home">Back to Home</a>
</p>
<a href="/home?action=addStaff" class="btn btn badge-success">Add New Staff</a>
<form action="/home?action=searchStaff" method="post" style="float: right">
    <input type="text" name="staffNameSearch" placeholder="Nhập tên">
    <input type="text" name="staffEmailSearch" placeholder="Nhập email">
    <button type="submit">Search</button>
</form>
<div>
    <table class="table table-striped" style="text-align: center">
        <tr class="bg-dark text-white">
            <th>#</th>
            <th>ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Birthday</th>
            <th>Code</th>
            <th>Salary</th>
            <th>Position</th>
            <th>Level</th>
            <th>Department</th>
            <th>Phone Number</th>
            <th>Email</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${staffList}" var="staff" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${staff.staffId}</td>
                <td>${staff.staffName}</td>
                <c:if test="${staff.gender}">
                    <td>Nam</td>
                </c:if>
                <c:if test="${!staff.gender}">
                    <td>Nữ</td>
                </c:if>
                <td>${staff.staffBirthday}</td>
                <td>${staff.staffCode}</td>
                <td>${staff.staffSalary}</td>
                <c:forEach items="${positionList}" var="staffPosition">
                    <c:if test="${staffPosition.positionId==staff.positionId}">
                        <td> ${staffPosition.positionName}</td>
                    </c:if>
                </c:forEach>
                <c:forEach items="${levelList}" var="staffLevel">
                    <c:if test="${staffLevel.levelId==staff.levelId}">
                        <td> ${staffLevel.levelName}</td>
                    </c:if>
                </c:forEach>
                <c:forEach items="${departmentList}" var="staffDepartment">
                    <c:if test="${staffDepartment.departmentId==staff.departmentId}">
                        <td> ${staffDepartment.departmentName}</td>
                    </c:if>
                </c:forEach>
                <td>${staff.staffEmail}</td>
                <td>${staff.staffPhoneNumber}</td>
                <td><c:out value="${staff.staffAddress}"></c:out></td>

                <td>
                    <a href="/home?action=editStaff&staffId=${staff.staffId}" class="btn btn badge-primary">Edit</a>
                    <a href="/home?action=deleteStaff&staffId=${staff.staffId}" class="btn btn badge-danger">Delete</a>
                </td>

            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
