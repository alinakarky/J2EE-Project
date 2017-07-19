package shoppingsite

class ShopController {

    def index() { }
    def order() {
        def a = "aaaaa"
        def b = "bbbbbb"
        [ lista: a, listb: b]
    }

    def category()
    {
        render "This is category"
    }
}
