<%--
  Created by IntelliJ IDEA.
  User: Alina
  Date: 7/18/2017
  Time: 3:06 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Categories</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <asset:stylesheet src="bootstrap.css"/>
    <asset:javascript src="jquery-3.1.1.min.js"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="script.js"/>
    <asset:stylesheet src="font-awesome.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-inverse" style="height: 15px;">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">The Star Clothing Store</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#"><span class="glyphicon glyphicon-home" ></span></a></li>
        </ul>
        <ul class="nav navbar-nav">
            <li><a href="../category/showCategory">Category</a></li>
        </ul>
        <ul class="nav navbar-nav">
            <li><a href="showProduct">Products</a></li>
        </ul>
        <ul class="nav navbar-nav">
            <li><a href="showCustomer">Customers</a></li>
        </ul>
        <ul class="nav navbar-nav">
            <li><a href="showOrder">Orders</a></li>
        </ul>
    </div>
</nav>