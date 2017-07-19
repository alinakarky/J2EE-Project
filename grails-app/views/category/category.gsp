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
    <asset:stylesheet src="../bootstrap/css/bootstrap.css"/>
    <asset:javascript src="../bootstrap/js/bootstrap.js"/>
    <asset:stylesheet src="../bootstrap/css/bootstrap.min.css"/>
    <asset:stylesheet src="../bootstrap/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">WebSiteName</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1
                    <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Page 1-1</a></li>
                    <li><a href="#">Page 1-2</a></li>
                    <li><a href="#">Page 1-3</a></li>
                </ul>
            </li>
            <li><a href="#">Page 2</a></li>
            <li><a href="#">Page 3</a></li>
        </ul>
    </div>
</nav>
<div class="container">
<!--<h1 class="alert alert-danger" style="text-align: center">Website Heading</h1>-->
<g:if test="${flash.message}">
    <div class="alert alert-error" style="display: block">${flash.message}</div>
</g:if>
    <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
            <h2 class="alert alert-success">Add Categories</h2>
<g:form class="form-group" action="addCategories">
    %{--Id : <g:textField name="catId" id="catId" placeholder="id"/>--}%
   <label>Category</label> <br>
            <input type="text" class="form-control" name="catName" id="catName" placeholder="Category"/>
  <br><label>Description</label><br>  <g:textArea class="form-control" name="catDesc" id="catDesc" placeholder="Description"/>
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

                <td><button class=" btn btn-success optionButton">  <span class="glyphicon glyphicon-edit"></span></button>
                    <button class="btn btn-danger optionButton " data-toggle="modal" data-target="#myModal">  <span class="glyphicon glyphicon-trash"></span></button>

                </td>
            </tr>
        </g:each>
</table>
    </div>
</div>
</div>
</body>
</html>