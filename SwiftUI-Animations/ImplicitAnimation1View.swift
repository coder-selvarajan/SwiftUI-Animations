//
//  ImplicitAnimation1View.swift
//  SwiftUI-Animations
//
//  Created by Selvarajan on 15/11/24.
//

import SwiftUI

struct ImplicitAnimation1View: View {
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
//        .animation(.default, value: animationAmount) // This indicates the SwiftUI to apply default animation whenever the value of animationAmount changes.
        .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
        
    }
}

#Preview {
    ImplicitAnimation1View()
}
