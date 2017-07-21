package shoppingsite

class CategoryController {

    def index() { }

    def showCategory() {
       def listOfAllCategory = Category.createCriteria().list {
            order('id', 'desc')
        }
        //def listOfAllCategory = Category.findAll()
      //  listOfAllCategory.sort()

        render(view: "category" ,model:[listOfAllCategory:listOfAllCategory])
    }

    def addCategories(){
        if(params?.catName)
        {
            def catName = params?.catName
            def catDesc = params?.catDesc
            Category category = new Category()
            category.catName = catName
            category.catDesc = catDesc
            if (category.save(flush: true, failOnError: true)){
                flash.message = "Data Successfully Added"
                redirect(controller: 'category', action: 'showCategory')
            }
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
    def categoryId=params?.categoryId
    println (categoryId.toString())
    def obj = Category.findAllB(idTobeDeleted)

    def listOfCategory = Category.findById(categoryId)
    println (listOfCategory.toString())
    render(view: "category" ,model:[listOfCategory:listOfCategory])
    if(params?.categoryId)
    {



    }
    showCategory()
}

}
