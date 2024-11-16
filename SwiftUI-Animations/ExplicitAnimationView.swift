//
//  ExplicitAnimationsView.swift
//  SwiftUI-Animations
//
//  Created by Selvarajan on 16/11/24.
//

import SwiftUI

import SwiftUI

struct ExplicitAnimationView: View {
    @State var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}

#Preview {
    ExplicitAnimationView()
}
