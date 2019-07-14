import UIKit

//Write a program that adds the numbers 1-255 to an array

var arr: [Int] = [Int]()
for i in 1...255 {
    arr.append(i)
}
print(arr)


//Swap two random values in the array

let random = Int(arc4random_uniform(UInt32(arr.count)))
let random1 = Int(arc4random_uniform(UInt32(arr.count)))

let temp = arr[random]
arr[random] = arr[random1]
arr[random1] = temp

//Now write the code that swaps random values 100 times (You've created a "Shuffle"!)

for _ in 0...99 {
    let random = Int(arc4random_uniform(UInt32(arr.count)))
    let random1 = Int(arc4random_uniform(UInt32(arr.count)))
    
    let temp = arr[random]
    arr[random] = arr[random1]
    arr[random1] = temp
    
}
print(arr)

//Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of Life, the Universe, and Everything at index __" and print the index of where "42" was before you removed it.

for x in 0..<arr.count {
    if (arr[x] == 42) {
        arr.remove(at: x)
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(x)")
        break;
    }
}
