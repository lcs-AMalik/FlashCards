//
//  ContentView.swift
//  FlashCards
//
//  Created by Abdul Malik on 2021-12-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
            
            Text("What's \"powerhouse\" of a cell?")
                .font(.largeTitle)
            
            Button(action: {
                print("Button was pressed")
            }, label: {
            Text: ("Check")
            })
                .buttonStyle(.bordered)
            
            Text("mitrochondria")
                .font(.title)
            
            Spacer()
            
        }
    }   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
