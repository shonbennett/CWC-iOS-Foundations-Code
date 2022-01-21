//shortcut tip for commenting fast: highlight area then command /
//for-in loop example
//inidcates that it goes from 0 to 10 (not including 10 though)
for index in 0..<10 {
    print("Iteration number \(index)")
}

print()
//iterate through an array using for-in loop
var array = [1, 5, 10]
for index in 0...array.count-1 {
    print(array[index])
}

print()
//iterate through array without using the index
for element in array {
    print(element)
}

print()
//repeat while example -- guaranteed to run at least once because it checks AFTER it runs
var counter = 10
repeat {
   print(counter)
    counter -= 1
    
} while counter > 0
print("GO!")

print()
//while loop example -- not guaranteed to run at least once because the condition is checked first
counter = 5
while counter > 0 {
    print(counter)
    counter -= 1
}
print("GO!")
