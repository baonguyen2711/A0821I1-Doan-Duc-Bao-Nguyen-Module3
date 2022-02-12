<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/2/2022
  Time: 6:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Simple Dictionary</title>
</head>
<body>
<h2>Vietnamese Dictionary</h2>
<%--cách 1 là action có đuôi jsp--%>
<%--<form action="dictionary.jsp" method="post">--%>

<%--Cách 2--%>
  <form action="dictionary" method="post">
  <input type="text" name="txtSearch" placeholder="Enter your word: "/>
  <input type = "submit" id = "submit" value = "Search"/>
</form>
</body>
</html>
