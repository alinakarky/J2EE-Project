package shoppingsite

class CategoryController {

    def index() { }

    def showCategory() {
        def listOfAllCategory = Category.createCriteria().list {
            order('id', 'desc')
        }
        render(view: "category" ,model:[listOfAllCategory:listOfAllCategory])
    }

    def addCategories(){
        def catName = params?.catName
        def catDesc = params?.catDesc
        Category category = new Category()
        category.catName = catName
        category.catDesc = catDesc
        if (category.save(flush: true, failOnError: true)){
            flash.message = "Data Successfully Added"
        }
        def listOfAllCategory = Category.findAll()
        render(view: "category" ,model:[listOfAllCategory:listOfAllCategory])
    }



}
