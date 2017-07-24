<g:render template="../include/header" />
<div class="container">

<g:if test="${flash.message}">

    <div class="alert-success" style="display: block">${flash.message}</div>
</g:if>

    <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
            <h2 class="alert alert-success">Add Products</h2>
<g:form class="form-group" action="addProduct">

   <label>Product Name</label> <br>
    <input type="text" class="form-control" name="productName" id="productName" placeholder="Product Name" value="<g:if test="${catEdit}">${catEdit?.catName}</g:if>"/>
  <br><label>Category</label><br>
    <select name="catDropDown" id="catDropDown" class="form-control">
        <option>--Select Category--</option>
    </select>
    <div id="catDropDown">
    </div>
    <br>
    <label>Quantity</label><br>
    <input type="number" class="form-control" name="quantity" id="quantity" placeholder="Quantity" value="<g:if test="${catEdit}">${catEdit?.catDesc}</g:if>"/>
    <br>
    <label>Price per Quantity</label><br>
    <input type="number" class="form-control" name="perPrice" id="perPrice" placeholder="Price" value="<g:if test="${catEdit}">${catEdit?.catDesc}</g:if>"/>
    <br>
    <label>Upload Photo</label><br>
    <input type="file" class="form-control" name="photo" id="photo"  value="<g:if test="${catEdit}">${catEdit?.catDesc}</g:if>"/>
    <br>
    <g:if test="${catEdit}">

        <input type="hidden" value="${catEdit?.id}" name="catId"/>
    </g:if>
    <g:submitButton class="btn-sm btn-primary" name="add" value="Add" style="float:right "/>

</g:form>
</div>
    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
        <h2 class="alert alert-success">List of Products</h2>
    <table class="table table-condensed table-bordered table-hover ">
            <tr>
                <th>
                    Product Name
                </th>
                <th>
                    Category
                </th>
                <th>
                    Image
                </th>
                <th>
                   Quantity
                </th>
                <th>
                    Price (per Quantity)
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
<a href="${createLink(action: 'editCategory',params: [categoryId:category.id])}"> <span class="glyphicon glyphicon-edit"></span> </a>
  %{--<a class="btn btn-primary" id="btnEdit"> <span class="glyphicon glyphicon-edit"></span> </a>--}%
  &nbsp;
                    <a id="delete" onclick="return (confirmDelete())" href="${createLink(action: 'deleteCategory',params: [categoryId:category.id])}"> <span class="glyphicon glyphicon-trash"></span> </a>

                </td>
            </tr>
        </g:each>
</table>
    </div>
</div>
</div>
</body>
<script type="text/javascript">

    function categoryCheck() {
            ${remoteFunction(controller: 'product', action: 'loadCategory', update: "catDropDown", params:"\'catValue=\' + catList")}
        }

</script>
</html>