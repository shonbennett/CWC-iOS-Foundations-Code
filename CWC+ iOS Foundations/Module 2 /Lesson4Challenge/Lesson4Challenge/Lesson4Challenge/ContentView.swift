//
//  ContentView.swift
//  Lesson4Challenge
//
//  Created by Shon Bennett on 1/21/22.
//

import SwiftUI

struct ContentView: View {
    @State var intArray:[Int] = []
    var body: some View {
        NavigationView {
        VStack {
            
            List(intArray, id: \.self){ arrayElement in
                
                Text(String(arrayElement))
                
            }.navigationBarTitle(Text("Number List"))
            
            Button(action: {
                addRandomNumber()
            }, label: {
                Text("Add elements until we get a 7")
            })
            Button(action: {
                increase()
            }, label: {
                Text("Increase all numbers in the list")
            })
            Button(action: {
                clearTheList()
            }, label: {
                Text("Remove all numbers for the list")
            })
        } //end VStack
        } //end NavigationView
    }
    
    //this will add random numbers to the array until the number 7 is generated
    func addRandomNumber() -> Void {
        var randomNumber = Int.random(in: 0...10)
        intArray.append(randomNumber)
        
        while randomNumber != 7{
            randomNumber = Int.random(in: 0...10)
            intArray.append(randomNumber)
        }
    }
    
    //this method increases all elements in the int array by 1
    func increase() -> Void {
        
        for index in 0...intArray.count-1 {
            intArray[index] += 1
        }
    }
    
    //this func will remove all elements from the list
    func clearTheList() -> Void {
        
        while intArray.count != 0 {
            intArray.remove(at: 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
