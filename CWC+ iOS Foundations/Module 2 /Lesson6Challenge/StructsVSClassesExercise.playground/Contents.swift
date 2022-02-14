import UIKit

//see how structs are value types -- the two struct instaances will NOT point to the same place in memory; they will not share info
struct Person {
    var name = "Bob"
}

//set patrick name to Shon
var patrick = Person()
patrick.name = "Shon"

//set spongebob name to Marlon
var spongebob = patrick
spongebob.name = "Marlon"

//print Shon for patrick, and Marlon for spongebob
print(patrick.name)
print(spongebob.name)
print()


//see how classes are reference types --- they will point to the same place in memory; what you do to one instance will affect the other
class Human {
    //by default the name for Human objects will be Gabriel
    var name = "Gabriel"
}

//function to change the name of a Human object
func changeName(obj:Human, newName:String) {
    obj.name = newName
}

var person1 = Human()
//change person1's name to Booker
changeName(obj: person1, newName: "Booker")

var person2 = person1
//change person2's name to Mario, which will affect both person2 and person1 since they both point to the same area in memory 
changeName(obj: person2, newName: "Mario")

//both will print out Mario
print(person1.name)
print(person2.name)



