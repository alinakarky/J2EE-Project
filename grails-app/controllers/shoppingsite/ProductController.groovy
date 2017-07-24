package shoppingsite

class ProductController {

    def index() {

    }

    def showProduct()
    {
render(view: "Product")
    }

   def loadCategory()
   {
      //  if (session.getAttribute('superAdminId')) {
          //  def stateId = params.stateValue
       def catList = Category.executeQuery("select distinct category as catList, id as catList from Category")
            def catNameId = []
            for (int i = 0; i < catList.size(); i++) {
                def catName = catList.get(i)
                catNameId.add(catNameId[0] + "|" + catNameId[1])
            }
            render(template: '../product/catDropDown', model: [catList: catNameId])
      //   else {
         //   redirect(controller: 'product', action: 'logoutCheck')
        //println("Error")
   }

}
