//
//  ContentView.swift
//  Lesson2Challenge
//
//  Created by Shon Bennett on 1/17/22.
//

import SwiftUI

struct PlayingCard:Equatable {
    //will not having @State here crash everything?
    var num:Int
    var suit:Int
}

struct ContentView: View {
    //remember: for properties, you MUST provide arguements, or the ContentView will NOT run
    //deck meant to store "many instances" of the PlayingCard structure
    @State var deck:[PlayingCard] = []
    
    //labelName property used to change the label based on what the PlayingCard combination is
    @State var labelName:String = ""
    @State var secondLabelName:String = ""
    
    //num and suit arrays we use in button action that displays the type of card drawn
    var numArray:[String] = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    var suitArray:[String] = ["Spades", "Clubs", "Hearts", "Diamonds"]
    
    //array used in makeCard method to make sure we do not have any duplicate cards. made sure to include @State in front so we can add to the property
    @State var checkMadeCard:[String] = []
    
    var body: some View {
        VStack {
            Text(labelName)
            HStack{
                Button(action: {
                    makeCard()
                }, label: {
                    Text("Make a card")
                })
                Button(action: {
                    drawCard()
                }, label: {
                    Text("Draw a card")
                })
            }
        }
        
    }
    //METHODS
    func makeCard() {
        //create a new PlayingCard instance and store it in newCard var, then make a String representation of it and store it in cardInstanceString
        //suit is a random number 0 to 3 to stay in range of the array's length, which is 4. num is 0...12 to stay in range of the array's length, which is 13. 
        let newCard = PlayingCard(num: Int.random(in: 0...12), suit: Int.random(in: 0...3))
        let cardInstanceString:String = "\(newCard.num) + \(newCard.suit)"
        
        //check the checkMadeCard array to see if this was card was created already
        if (checkMadeCard.contains(cardInstanceString) == true){
            labelName = "Generated duplicate card"
        }
        //if not a duplicate, add the actual PlayingCard instance to the deck array, and add the string representation of the instance to the checkMadeCard array
        //label on button will display the type of card made
        else if (checkMadeCard.contains(cardInstanceString) == false){
            labelName = "Generated a \(numArray[newCard.num]) of \(suitArray[newCard.suit])"
            deck.append(newCard)
            checkMadeCard.append(cardInstanceString)
        }
    }
    
    func drawCard() {
        //if the deck has no cards in it, we will not check the deck
        if deck.count == 0 {
            labelName = "No cards in the deck"
        }
        else {
            // if the deck has cards in it, we will generate a random number, and use the number as an index to pick a random card
            let randomElement = Int.random(in: 0...deck.count-1)
            let randomCard = deck[randomElement]
            labelName = "Drew a \(numArray[randomCard.num]) of \(suitArray[randomCard.suit])"
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}


