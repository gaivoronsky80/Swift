import UIKit

//struct Rectangle {
//    var width = 10
//    var height = 20
//}
//var myRectangle = Rectangle()           // Taking advantage of type inference
//print(myRectangle.width)
//print(myRectangle.height)
//print(myRectangle)
//print(Rectangle())

//Struct Methods

//struct Rectangle {
//    var width = 10
//    var height = 20
//    func printDesc() {
//        print("I have a width of \(width) and a height of \(height)")
//    }
//    mutating func doubleWidth() {                // Why do we need the mutating keyword here?
//        width *= 2
//        print("I have a new width of \(width)")
//    }
//}
//var myRectangle = Rectangle()
//myRectangle.printDesc()
//myRectangle.doubleWidth()

//Struct Initialization

//struct Rectangle {
//    var width = 200
//    var height = 400
//}
//let rectangle = Rectangle()
//print(Rectangle())

//struct Rectangle {
//    var width: Int
//    var height: Int
//}
//let rectangle = Rectangle(width: 200, height: 400)
//print(rectangle.height)

//Custom Init Method

struct Rectangle {
    var width: Int
    var height: Int
    var size: String
    init (width: Int, height: Int){
        self.width = width
        self.height = height
        if width + height <= 10 {
            size = "small"
        } else {
            size = "big"
        }
    }
}
let rectangle = Rectangle(width: 2, height: 4)
print(rectangle.size)
