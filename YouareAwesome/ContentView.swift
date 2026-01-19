//
//  ContentView.swift
//  YouareAwesome
//
//  Created by Nia Mitchell on 1/13/26.
// commit after lesson 1.8

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
  
    var body: some View {
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(Font.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)

            
            Spacer()
            
            Button("Show Message!") {
                let messages = [ "You are Awesome!", "You are Great!", "Fabulous, girls!", "Let's do great things", " Be wonderful and lovely" ]
                
                
                message = messages [messageNumber]
                messageNumber += 1
                if messageNumber == message.count {
                    messageNumber = 0
                }

             
                if imageNumber > 9 {
                    imageNumber = 0
                }
                imageName = "image\(imageNumber)"
                imageNumber += 1
            
            
                

            }
            .buttonStyle(.borderedProminent)
            .font(Font.title2)
            .tint(.orange)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
