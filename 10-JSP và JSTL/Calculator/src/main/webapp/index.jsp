<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/2/2022
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1>Calculator</h1>
<form action="/result" method="post">
    <table>
        <tr>
            <td>First operand:</td>
            <td><input name="first" type="text"/></td>
        </tr>
        <tr>
            <td>Operator:</td>
            <td>
                <select name="calculation">
                    <option value="+">Addition</option>
                    <option value="-">Subtraction</option>
                    <option value="*">Multiplication</option>
                    <option value="/">Division</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Second operand:</td>
            <td><input name="second" type="text"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Calculate"/></td>
        </tr>
    </table>
</form>
</body>

</html>
