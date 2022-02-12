<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/2/2022
  Time: 11:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form method="post" action="/discount">
    <div class="product">
      <h2>Product Discount Calculator</h2>
      <label>Product Description:</label>
      <input type="text" name="description"><br>
      <label >List Price:</label>
      <input style="margin-left: 70px" type="number" name="price"><br>
      <label>Discount Percent:</label>
      <input style="margin-left: 20px"type="number" name="discount_percent"><br>
      <label>    </label>
      <input type="submit" value="Calculate Discount">
    </div>
  </form>
  </body>
</html>
