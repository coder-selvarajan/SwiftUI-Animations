//
//  ImplicitAnimation2View.swift
//  SwiftUI-Animations
//
//  Created by Selvarajan on 16/11/24.
//

import SwiftUI

struct CustomizingAnimationView: View {
    @State var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me")
        {
            // none
        }
        .padding(50)
        .background(Color.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeOut(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: animationAmount)
        )
        .onAppear {
            animationAmount = 2
        }
    }
}

#Preview {
    CustomizingAnimationView()
}
