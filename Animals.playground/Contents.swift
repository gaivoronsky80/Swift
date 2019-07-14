import UIKit

class Animal {
    let name: String
    var health: Int
    
    init(name: String) {
        self.name = name
        self.health = 100
    }
    
    func displayHealth() {
        print(self.health)
    }
}

class Cat : Animal {
    override init(name: String) {
        super.init(name: name)
        self.health = 150
    }
    
    func growl() {
        print("Rawr!")
    }
    
    func run() {
        print("Running")
        self.health -= 10
    }
}

class Lion : Cat {
    override init(name: String) {
        super.init(name: name)
        self.health = 200
    }
    
    override func growl() {
        print("ROAR! I am the King of the Jungle")
    }
}

class Cheetah : Cat {
    override init(name: String) {
        super.init(name: name)
        self.health = 200
    }
    
    override func run() {
        if self.health >= 50 {
            print("Running Fast")
            self.health -= 50
        }
        if self.health < 50 {
            print("Not enought health!")
        }
    }
    
    func sleep() {
        self.health += 50
        if self.health > 200 {
            self.health = 200
        }
    }
}
var tymon: Cheetah = Cheetah(name: "Tymon")
print(tymon.name)
tymon.run()
tymon.run()
tymon.run()
tymon.run()
tymon.displayHealth()

var symba: Lion = Lion(name: "Symba")
print(symba.name)
symba.run()
symba.run()
symba.run()
symba.growl()
