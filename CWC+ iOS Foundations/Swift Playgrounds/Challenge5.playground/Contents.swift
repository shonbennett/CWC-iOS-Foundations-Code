/*
 Shon Bennett
 Feb 13, 2022
 Module 2 Challenge 5
 
 */

let nameArray:[String] = ["Shon", "Lamont", "Imani", "Marlon"]

//parent class named Person
class Person {
    var name = ""
    
    func introduceMyself(){
        let introduction = "Hello, my name is \(name)"
        print(introduction)
    }
    
}

//subclasses of Person class
class Engineer: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm an engineer.")
        print()
        
    }
}
    
    class Teacher: Person {
        override func introduceMyself() {
            super.introduceMyself()
            print("I'm a teacher.")
            print()
            
        }
}
    
    class Animator: Person {
        override func introduceMyself() {
            super.introduceMyself()
            print("I'm an animator.")
            print()
            
        }
    }

    class Athlete: Person {
        override func introduceMyself() {
            super.introduceMyself()
            print("I'm an athlete.")
        }
    }


    
    //for loop the makes use of the Person class
    for _ in 0...10 {
        //select a random String from the nameArray property
        let selectedName: String = nameArray.randomElement()!
        
        //select a random number between 1 and 100 and store it in num var
        let num = Int.random(in: 1...100)
        
        //choose a subclass at random based on if num is currently divisible by 2 , 3, or 4; if none applye, Animator subclass is selected
        if num%2 == 0 {
            var engineer = Engineer()
            engineer.name = selectedName
            engineer.introduceMyself()
        }
        else if num%3 == 0 {
            var teacher = Teacher()
            teacher.name = selectedName
            teacher.introduceMyself()
        }
        else if num%4 == 0 {
            var athlete = Athlete()
            athlete.name = selectedName
            athlete.introduceMyself()
        }
        else {
            var animator = Animator()
            animator.name = selectedName
            animator.introduceMyself()
        }
        
    }







