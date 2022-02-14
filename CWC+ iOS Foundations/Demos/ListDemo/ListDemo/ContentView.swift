//
//  ContentView.swift
//  ListDemo
//
//  Created by Shon Bennett on 1/18/22.
//

import SwiftUI

struct ContentView: View {
    var array:[String] = ["Element 1", "Element 2", "Element 3"]
    var body: some View {
        //the NavigationView allows us to put a view bar at the top
        NavigationView {
            //List() is an instance that will create a scrollable UI list view using a List instance
            //"array" var is passed in as a parameter that we can iterate through
            // the backslash dot self indicates the id is the element itself
            //each element in the array will be stored in the arrayElement variable
            List(array, id: \.self) { arrayElement in
                //NavLink allows us to create different screens to navigate to as we click different list elements
                //destination spefies where we will be going to and the label allows us to create the text that will be displayed before we click
                NavigationLink(destination: Text("Destination reached"), label:{ Text(arrayElement)})
                
            
                //add the navigationBarTitle navigator to the List() brackets to give the list a title
            }.navigationBarTitle(Text("Shon's List"))

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
