//
//  AnimatingBindings.swift
//  SwiftUI-Animations
//
//  Created by Selvarajan on 16/11/24.
//
import SwiftUI

struct AnimatingBindingsView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Stepper("Scale amount",
                    value: $animationAmount.animation(), in: 1...10)
            
             // We can further customize this animation however we want
             Stepper("Scale amount",
                     value: $animationAmount.animation(
                        .easeInOut(duration: 1)
                        .repeatCount(3, autoreverses: true)
             ), in: 1...10)
             
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
        }
        .padding(30)
    }
}

#Preview {
    AnimatingBindingsView()
}
