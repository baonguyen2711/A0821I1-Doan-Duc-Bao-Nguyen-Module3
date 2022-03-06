<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/3/2022
  Time: 2:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>UpDate Staff</h2>
<p>
    <a href="/home?action=showStaff">Back to Staff List</a>
</p>
<form method="post">
    <fieldset>
        <legend>Information Staff</legend>
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="staffName" placeholder="Nhập tên"
                           value="${staff.getStaffName()}"></td>
            </tr>
            <tr>
                <td>Giới Tính</td>
                <td>
                    <input type="radio" name="gender" value="true" checked>Nam
                    <input type="radio" name="gender" value="false" >Nữ
                </td>
            </tr>
            <tr>
                <td>Ngày sinh</td>
                <td><input type="date" name="staffBirthday" placeholder="Nhập ngày sinh"
                           value="${staff.getStaffBirthday()}"></td>
            </tr>
            <tr>
                <td>Code</td>
                <td><input type="text" name="staffCode" placeholder="Nhập code"
                           value="${staff.getStaffCode()}"></td>
            </tr>
            <tr>
                <td>Salary</td>
                <td><input type="text" name="staffSalary" placeholder="Nhập salary"
                           value="${staff.getStaffSalary()}"></td>
            </tr>
            <tr>
                <td>Position</td>
                <td>
                    <select name="positionId">
                        <c:forEach items="${positionList}" var="position">
                            <c:if test="${position.positionId==staff.positionId}">
                                <option value="${position.positionId}">${position.positionName}</option>

                            </c:if>
                        </c:forEach>
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
                        <c:forEach items="${levelList}" var="level">
                            <c:if test="${level.levelId==staff.levelId}">
                                <option value="${level.levelId}">${level.levelName}</option>
                            </c:if>
                        </c:forEach>
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
                        <c:forEach items="${departmentList}" var="department">
                            <c:if test="${department.departmentId==staff.departmentId}">
                                <option value="${department.departmentId}">${department.departmentName}</option>

                            </c:if>
                        </c:forEach>
                        <c:forEach items="${departmentList}" var="department">
                            <option value="${department.departmentId}">${department.departmentName}</option>

                        </c:forEach>

                    </select>
                </td>
            </tr>

            <tr>
                <td>Phone Number</td>
                <td><input type="text" name="staffPhoneNumber" placeholder="Nhập số điện thoại"
                           value="${staff.getStaffPhoneNumber()}"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="staffEmail" placeholder="Nhập email"
                           value="${staff.getStaffEmail()}"></td>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                <td><input type="text" name="staffAddress" placeholder="Nhập địa chỉ"
                           value="${staff.getStaffAddress()}"></td>
            </tr>
        </table>
        <button type="submit">Submit</button>
    </fieldset>
</form>
</body>
</html>
