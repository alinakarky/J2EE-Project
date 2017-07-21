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

    <asset:stylesheet src="../bootstrap/css/bootstrap.css"/>
    <asset:javascript src="../bootstrap/js/bootstrap.js"/>
    <asset:javascript src="script.js"/>
    <asset:stylesheet src="../bootstrap/css/bootstrap.min.css"/>
    <asset:stylesheet src="../bootstrap/css/font-awesome.min.css"/>
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
            <li><a href="showCategory">Category</a></li>
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
<div class="container">
<g:if test="${flash.message}">
    <div class="alert alert-error" style="display: block">${flash.message}</div>
</g:if>

    <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
            <h2 class="alert alert-success">Add Categories</h2>
<g:form class="form-group" action="addCategories">

    <g:if test="${listOfCategory}">

        <g:each var="cat" in="${listOfCategory}">
            <input name="catName" type="text" value="${cat?.catName}">
        </g:each>
    </g:if>
    %{--Id : <g:textField name="catId" id="catId" placeholder="id"/>--}%
   <label>Category</label> <br>
    <input type="text" class="form-control" name="catName" id="catName" placeholder="Category"/>
  <br><label>Description</label><br>
    <g:textArea class="form-control" name="catDesc" id="catDesc" placeholder="Description"/>
<br>
    <g:submitButton class="btn-sm btn-primary" name="add" value="Add" style="float:right "/>
</g:form>
</div>
    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
        <h2 class="alert alert-success">View Categories</h2>
    <table class="table table-condensed table-bordered table-hover ">
            <tr>
                <th>
                    Name
                </th>
                <th>
                    Description
                </th>
                <th>
                    Action
                </th>
            </tr>
        <g:each var="category" in="${listOfAllCategory}">
            <tr>
                <td>
                    ${category?.catName}
                </td>
                <td>
                    ${category?.catDesc}

                </td>

                <td>
%{--
                    <button class="btn btn-danger optionButton "  href="${createLink(action: 'showCategory')}" data-toggle="modal" data-target="#myModal">  <span class="glyphicon glyphicon-trash"></span></button>
--}%   <a href="${createLink(action: 'editCategory',params: [categoryId:category.id])}"> <span class="glyphicon glyphicon-edit"></span> </a> &nbsp;
                    <a id="delete" onclick="return (confirmDelete())" href="${createLink(action: 'deleteCategory',params: [categoryId:category.id])}"> <span class="glyphicon glyphicon-trash"></span> </a>

                    %{--<g:form controller="category" action="deleteCategory">--}%
                        %{--<input type="hidden" name="categoryId" value="${category?.id}">--}%
                        %{--<button class="btn btn-danger optionButton "  data-toggle="modal" data-target="#myModal">  <span class="glyphicon glyphicon-trash"></span></button>--}%
                    %{--</g:form>--}%

                </td>
            </tr>
        </g:each>
</table>
    </div>
</div>
</div>
</body>
</html>