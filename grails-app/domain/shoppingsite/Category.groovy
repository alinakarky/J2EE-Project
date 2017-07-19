package shoppingsite

class Category {

    String catName
    String catDesc
    Date created = new Date()
    static constraints = {
        catDesc nullable: true
    }
}
