//
//  ContentView.swift
//  YouareAwesome
//
//  Created by Nia Mitchell on 1/13/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageString = ""
  
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName:imageString)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(Font.largeTitle)
                .fontWeight(.ultraLight)

            
            Spacer()
            
            
            Button("Press me!") {
                let message1 = "You are Awesome!"
                let message2 = " You are Great!"
                let imageString1 = "hand.thumbsup"
                let imageString2 = "sun.max.fill"
                
                message = ( message == message1 ? message2 : message1 )
                imageString = ( imageString == imageString1 ? imageString2 : imageString1 )
                
//                if message == message1 {
//                    message = message2
//                    imageString = imageString2
//                } else{
//                    message = message1
//                    imageString = imageString1
//                }
//
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
