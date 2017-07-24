package shoppingsite

class CategoryController {

    def index() { redirect(controller: 'Category', action :'showCategory')}

    def showCategory() {
       // [messages:messages.reverse()]
      /* def listOfAllCategory = Category.createCriteria().list {
            order('id', 'desc')
        }*/
        //def listOfAllCategory = Category.findAll()
      //  listOfAllCategory.sort()
        def listOfAllCategory = Category.listOrderById(order: 'desc')
        render(view: "category" ,model:[listOfAllCategory:listOfAllCategory])
    }

    def addCategories(){
        if(!params?.catId) {
            if (params?.catName) {
                def catName = params?.catName
                def catDesc = params?.catDesc
                Category category = new Category()
                category.catName = catName
                category.catDesc = catDesc
                if (category.save(flush: true, failOnError: true)) {
                    flash.message = "Data Successfully Added"
                    redirect(controller: 'category', action: 'showCategory')
                }
            }
        }else if (params?.catId)
        {
            Category cat = Category.get(params.catId)
            cat.properties = params
            if(cat.save(flush: true))
            {flash.message = "Data Successfully Updated"
                redirect(controller: 'category', action: 'showCategory')}

        }
       // def listOfAllCategory = Category.findAll()
      showCategory()
    }

    def deleteCategory(){
        def idTobeDeleted = params?.categoryId
        def objectTobeDeleted = Category.findById(idTobeDeleted)
        println (objectTobeDeleted.toString())
        if(objectTobeDeleted.delete(flush: true, failOnError: true)){
            flash.message = "Data Deleted Successfully"
            redirect(controller: 'category', action: 'showCategory')
        }
        redirect(controller: 'category', action: 'showCategory')

    }

def editCategory()
{

    def catEdit = Category.get(params.categoryId)
    def listOfAllCategory = Category.listOrderById(order: 'desc')
    render(view: "category" ,model:[catEdit:catEdit,listOfAllCategory:listOfAllCategory])

}

}
