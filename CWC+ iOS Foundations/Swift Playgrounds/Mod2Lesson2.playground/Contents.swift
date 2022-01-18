var myNum:Int = 10
//create array
var myArray:[Int] = [Int]()
//add to the array
myArray.append(10)
myArray.append(100)
myArray.append(1000)
//print the second element
print("The second element is \(myArray[1])")
//remove an element
myArray.remove(at: 2)
print(myArray)


//can also declare arrays directly in one line
var newArray:[Int] = [1,2,3,4,5,6]

//add to array
myArray.insert(4, at: 2)
print(myArray)

//contains method searches array for specified value. if in it, will return true. if not, will return false
print(myArray.contains(90))

