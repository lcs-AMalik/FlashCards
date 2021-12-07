//
//  ContentView.swift
//  FlashCards
//
//  Created by Abdul Malik on 2021-12-07.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    //
    @State var currentCard: Card = listOfCards.randomElement()!
    // This controsl whether the answer is visible
    @State var isAnswerShowing = false
    
    // MARK: Computed properties
    var body: some View {
        VStack(spacing: 25) {
            
            //Output
            Text(currentCard.question)
                .font(.largeTitle)
            
            //Input
            Button(action: {
                print("Button was pressed")
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
            
            //Output
            Text(currentCard.answer)
                .font(.title)
            //              CONDITION     True  False
                .opacity(isAnswerShowing ? 1.0 : 0.0)
            
            //Input
            Button(action: {
                currentCard = listOfCards.randomElement()!
                // print("Button was pressed")
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
                .opacity(isAnswerShowing ? 1.0 : 0.0)
            Spacer()
            
        }
        .navigationTitle("Flash Cards")
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
         NavigationView {
            ContentView()
        }
    }
}
