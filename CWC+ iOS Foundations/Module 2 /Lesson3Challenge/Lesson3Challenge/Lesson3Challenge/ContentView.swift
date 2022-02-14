//
//  ContentView.swift
//  Lesson3Challenge - each time the button is pressed, the program selects a random element from the stringArray and adds it to the emptyArray var. the List() then iterates through the emptyArray to add the new array element to the list.
//
//  Created by Shon Bennett on 1/20/22.
//

import SwiftUI

struct ContentView: View {
    //Base string array property we will be selecting from
    @State var stringArray:[String] = ["His Nintendo Switch 🎮", "His MacBook Pro 💻", "Nice Spotify playlists 🎶", "His sneakers 👟", "Studio Ghibli Films 🎥", "His Bike 🚲"]
    //empty array property we will add String elements from stringArray to
    @State var emptyArray:[String] = []
    //index property we will use to select a random string from stringArray
    @State var randomIndex = 0

    
    var body: some View {
        //IMPORTANT: never forget the VStack for a project like this. If you try to do a list with a button under it without the VStack, the button will just be non-existent
        VStack {
            //NavigationView allows for a navigation bar to be at the top
            NavigationView {
                ZStack {
                //this List instance takes in the emptyArray as a parameter, and iterates through it. each element is stored in the stringElment var. The NavigationLink instance adds a label to the list. when the label is clicked, we are taken to a different screen
                //specific labels are shown based on value of the stringElement var
                List(emptyArray, id: \.self) { stringElement in
                    if stringElement == "His sneakers 👟" {
                        NavigationLink(destination: Text("If you want to brighten Shon's day, surprise him with a pair of shoes! Shon's favorite pair of shoes are his Retro 11 Lows!")
                                        .multilineTextAlignment(.center)
                                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/), label: {
                            Text("His sneakers 👟")
                        })
                    }
                    else if stringElement == "His Nintendo Switch 🎮" {
                        NavigationLink(destination: Text("Growing up, Shon was more of a PlayStation kind of guy; however, he has recently stepped into the realm of Nintendo via his Switch OLED. Now, Shon is hooked on Ninttendo! He loves the ease of use, portability, and franchise superstars (such as Mario and Link) that come with the Nintendo Switch. Currently, his favorite game on the Switch is Mario Tennis!")
                                        .multilineTextAlignment(.center)
                                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/), label: {
                            Text("His Nintendo Switch 🎮")
                        })
                    }
                    else if stringElement == "His MacBook Pro 💻" {
                        NavigationLink(destination: Text("Shon's MacBook allows him to program in Xcode... I mean, why wouldn't this be one of his favorite things?!")
                                        .multilineTextAlignment(.center)
                                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/), label: {
                            Text("His MacBook Pro 💻")
                        })
                    }
                    else if stringElement == "Nice Spotify playlists 🎶" {
                        NavigationLink(destination: Text("Shon comes from a very musical household; his dad is an organist, his brother is a singer and drummer, and his sister sings also. Although Shon himself has no musical talent, the theme of musicality is present in his life through his love for listening to music. This love has caused him to create way too many playlists on Spotify. Sure, these playlists makes his digital space cluttered in the Spotify app; but, at least he has playlists for every occasion.")
                                        .multilineTextAlignment(.center)
                                        .padding(.all), label: {
                            Text("Nice Spotify playlists 🎶")
                        })
                    }
                    else if stringElement == "Studio Ghibli Films 🎥"{
                        NavigationLink(destination: Text("Ever since viewinmg \"Spirited Away\" a few Winters ago, Shon has been hooked on Studio Ghibli films! Currently, his favorite Ghibli film is \"Howl's Moving Castle!\"")
                                        .multilineTextAlignment(.center)
                                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/), label: {
                            Text("Studio Ghibli Films 🎥")
                        })
                    }
                    else if stringElement == "His Bike 🚲" {
                        NavigationLink(destination: Text("Shon enjoys riding his bike for miles at a time during the summer!"), label: {
                            Text("His Bike 🚲")
                        })
                    }
                    else {
                        Text(stringElement)
                    }
                    
                }
                    
                }.navigationTitle(Text("Shon's Favorite Things")) //adds the title to the top of the list
                
            }
            
            //this button adds to the list each time it is pressed using the selectString function
            Button(action: {
                    selectString()
                
            }, label: {
                Text("What are some things Shon likes?")
            })
        }
          
    }
    
    func selectString() {
        //will only run if there is an element remaining in the stringArray. this way there isn't an out of bounds error that crashes the preview
        if stringArray.count != 0 {
            
            //generates a random number to be used as an index, and then adds the corresponding element in the stringArray to the emptyArray
            let randomIndex = Int.random(in: 0...stringArray.count-1)
            emptyArray.append(stringArray[randomIndex])
            
            //removes the element from the stringArray so there are no duplicates in the list
            stringArray.remove(at: randomIndex)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
