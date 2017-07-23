<g:render template="../include/header" />
<div class="container">
<g:if test="${flash.message}">
    <div class="alert alert-error" style="display: block">${flash.message}</div>
</g:if>

    <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
            <h2 class="alert alert-success">Add Categories</h2>
<g:form class="form-group" action="addCategories">

   <label>Category</label> <br>
    <input type="text" class="form-control" name="catName" id="catName" placeholder="Category" value="<g:if test="${catEdit}">
    ${catEdit?.catName}</g:if>"/>
  <br><label>Description</label><br>
    <input type="textarea" class="form-control" name="catDesc" id="catDesc" placeholder="Description" value="<g:if test="${catEdit}">${catEdit?.catDesc}</g:if>"/>

    <br>
    <g:if test="${catEdit}">
        <input type="hidden" value="${catEdit?.id}" name="catId"/>
    </g:if>
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
  <a href="${createLink(action: 'editCategory',params: [categoryId:category.id])}"> <span class="glyphicon glyphicon-edit"></span> </a> &nbsp;
                    <a id="delete" onclick="return (confirmDelete())" href="${createLink(action: 'deleteCategory',params: [categoryId:category.id])}"> <span class="glyphicon glyphicon-trash"></span> </a>

                </td>
            </tr>
        </g:each>
</table>
    </div>
</div>
</div>
</body>
</html>