//
//  ImplicitAnimation1View.swift
//  SwiftUI-Animations
//
//  Created by Selvarajan on 15/11/24.
//

import SwiftUI

struct ImplicitAnimationView: View {
    @State var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me")
        {
            animationAmount += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        
        // This indicates the SwiftUI to apply default animation whenever the value of animationAmount changes.
        .animation(.default, value: animationAmount)
        
        /*
         // This will cuase a sec delay before running easeInOut animation.
         .animation(
            .easeInOut(duration: 2)
            .delay(1),
            value: animationAmount
         )
        
         // This will repeat the animation for 3 times..
         .animation(
            .easeInOut(duration: 2)
            .repeatCount(3, autoreverses: true),
            value: animationAmount
         )
         
         // When the animation finishes, the view has to match with the state..
        */
    }
}

#Preview {
    ImplicitAnimationView()
}
