//
//  ContentView.swift
//  YouareAwesome
//
//  Created by Nia Mitchell on 1/13/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.orange)
                Text("I am a developer!")
                    .font(Font.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.red)
            }
            .padding()
    }
}

#Preview {
    ContentView()
}
