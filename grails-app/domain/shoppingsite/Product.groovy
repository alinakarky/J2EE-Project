package shoppingsite

class Product {
String productName
    BigInteger catId
    Double perPrice
    Integer quantity
    boolean isAvailable
    String photo
    Date addedDate=new Date()

    //category might have many products
    static hasMany = [category:Category]

    static constraints = {
    isAvailable nullable:true
    }
}
