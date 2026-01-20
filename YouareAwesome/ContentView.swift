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
            
            Text(message)
                .font(Font.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeIn(duration: 0.15 ), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.bouncy(duration: 0.5, extraBounce: 0.2 ), value: imageName)
            
       

            
            Spacer()
            
            Button("Show Message!") {
                
                let messages = [ "You are Awesome!", "You are Great!", "Wow, you are awesome. Continue to do great things. I'm am so proud of you", "Fabulous, girls!", "Let's do great things", " Be wonderful and lovely", " The smartest in the room" ]
                
                
                message = messages [messageNumber]
                messageNumber += 1
                
                if messageNumber == message.count {
                    messageNumber = 0
                }

             
                imageName = "image\(imageNumber)"
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
                

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
