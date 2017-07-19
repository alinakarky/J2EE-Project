<%--
  Created by IntelliJ IDEA.
  User: Alina
  Date: 7/17/2017
  Time: 2:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Order Page</title>
</head>

<body>
<h1> This is order.gsp in front</h1>
<br>
<h3>
    done
</h3>
<q> Value Of List A = ${lista}</q>
<p>Value Of List B = ${listb}</p>


<g:form action="">
   Product Name :  <g:textField name="ProductName" placeholder="Product"/>
   Category :  <g:textField name="Category" placeholder="Category"/>
    Price :  <g:textField name="Price" placeholder="Price"/>

</g:form>
</body>
</html>