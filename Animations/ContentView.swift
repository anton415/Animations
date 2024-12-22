//
//  ContentView.swift
//  Animations
//
//  Created by Anton Serdyuchenko on 22.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
            .animation(.default, value: animationAmount)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
