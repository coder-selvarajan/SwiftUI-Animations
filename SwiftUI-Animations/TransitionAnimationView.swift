//
//  TransitionAnimationView.swift
//  SwiftUI-Animations
//
//  Created by Selvarajan on 18/11/24.
//

import SwiftUI

struct TransitionAnimationView: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Show Red") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
                    /*
                     // To apply different animations for
                     // rectangle appear and disappear
                     .transition(.asymmetric(insertion: .scale,
                     removal: .opacity))
                    */
                     
            }
        }
    }
}

#Preview {
    TransitionAnimationView()
}
