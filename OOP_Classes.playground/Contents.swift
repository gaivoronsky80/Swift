import UIKit

//Classes

//class Person {
//    var species = "H. Sapiens"
//}
//var myPerson: Person = Person()
//print(myPerson.species)

//Stored Properties

//var myPerson = Person()                 // Note use of type inference to infer that it is "Person" type
//myPerson.species = "Homo Sapiens"       // We can change the property
//print(myPerson.species)                 // And we can access it!


//class Person {
//    let species = "H. Sapiens"
//}
//var myPerson = Person()
//myPerson.species = "Homo Sapiens"       // ! => Cannot assign to let constant 'species' in myPerson

//Methods

//class Person {
//    var species = "H. Sapiens"
//    func speak() {
//        print("Hello! I am a \(self.species)")   // Note how we refer to the properties of the instance through "self"
//    }
//}
//var myPerson: Person = Person()
//myPerson.speak()                             // Note we call method with dot notation similar to how we
                                             // access properties

//Method Parameter Names

//class User {
//    var intelligence = 0
//    func studyFor(topic: String, hours: Int) {
//        print("I am studying \(topic) for \(hours) hours")
//    }
//}
//var user = User()
//user.studyFor(topic: "Math", hours: 12)

//Initialization

class Person {
    var species = "H. Sapiens"
    var name: String       // Note we are only defining the type, we will initialize the value in the init methi
    init(name: String) {   // Note this function doesn't get called explicitly. It is called
        // when creating an instance using initialization syntax -- "Person()".
        self.name = name     // Note use of "self" here to refer to the name property.
    }
    func speak() {
        print("Hello! I am a \(self.species) and my name is \(self.name)")
        // Note how we refer to the properties using "self".
    }
}
var myPerson: Person = Person(name: "Jay")   // Now we have to pass a param to Person initialization.
myPerson.speak()                             // Note we call method similar to how we access properties.

