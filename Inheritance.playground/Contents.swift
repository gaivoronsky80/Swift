import UIKit

//class Person {
//    var species = "H. Sapiens"
//    var name: String
//    init(name: String) {         // Note: this function doesn't get called explicitly.  It is called
//        // when creating an instance using the initialization syntax -- "Person()"
//        self.name = name           // Note: the use of "self.name" here to refer to the name property
//                                    // instead of the name parameter
//    }
//    func speak() {
//        print("Hello! I am a \(self.species) and my name is \(self.name)")
//        // Note how we refer to the properties using "self"
//    }
//}
//class Developer: Person {      // Note how we are specifying that Developer will inherit from Person
//    var favoriteLanguage: String
//    init(name: String, favoriteLanguage: String) {  // Note there is no override keyword on init because it has
//                                                    // different parameter names then the Person init method
//        self.favoriteLanguage = favoriteLanguage
//        super.init(name: name)
//    }
//    override func speak() {                         // Note there is an override keyword on speak because it is
//                                                    // identical to the Person speak method
//        print("Hello! I am a Developer! My name is \(self.name)")
//    }
//}
//var myDeveloper: Developer = Developer(name: "Jay", favoriteLanguage: "Swift")
//myDeveloper.speak()
//var myPerson: Person = Person(name: "Nick")
//myPerson.speak()

//Chaining

class Building {
    var health = 100
    
    func takeDamage(_ damage: Int) -> Self {   // we changed the return type to Self
        health -= damage
        return self                                // Note the returned value is self
    }
}
var building = Building()
building.takeDamage(10).takeDamage(20)

class House: Building {
    var door = "closed"

    func openDoor() -> House {
        door = "open"
        return self
    }
}
var house = House()
house.takeDamage(10).openDoor() // this will throw an error because Buildings don't have an openDoor method

