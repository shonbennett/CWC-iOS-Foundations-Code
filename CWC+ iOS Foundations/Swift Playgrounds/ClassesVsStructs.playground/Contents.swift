//placing final infront of class prohibits other classes from subclassing it
class Person {
    var name:String = ""
    
    func talk(){
        print("Hey, there!")
        
        //placing private infront of this func makes it exlcusive to Person class
        func talk() {
            print("I'm a person")
        }
        
    }
}

//instance of class
var shon = Person()
//call method with dot notatio (just like in Java)
shon.talk()

//subclassing is exclusive to classes (structs cannot do this)
//class Comedian is a subclass of Person (it inherits everything from Person class)
class Comedian: Person {
    //when you override a method in a subclass, you MUST include the override keyword in front of it
    override func talk(){
            print("Make people laugh")
            
            //this super keyword calls the talk() method of the superclass Person
            super.talk()
    }
}

//since it is a subclass, it can call methods that the parent class has
var eddieMurphy = Comedian();
eddieMurphy.talk()

/*
 
 //REMEMBER: Structs cannot subclass
 
 ex: struct ContentView: View
     -Contentview is not a subclass of View. since this is a struct, View is a protocol here that ContentView must conform to
 
 
 Classes can conform to protocols just like a struct!
 ex: class Person: View {...}
 
 Subclasses can confrom to a protocol. you first subclass with colon, then insert a comma followed by the protocol name
 syntax: class Comedian: Person, View {...}
 
 */

