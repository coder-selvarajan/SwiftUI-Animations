//
//  ImplicitAnimationView1.swift
//  SwiftUI-Animations
//
//  Created by Selvarajan on 15/12/24.
//

import SwiftUI

struct ImplicitAnimationView1: View {
    @State var scale = 1.0
    @State var scaleUp: Bool = false
    
    var body: some View {
        ZStack {
            Text("Hello, World!")
            //            .animatableFont(size: scaleUp ? 56 : 24)
            
                .font(.system(size: scaleUp ? 56 : 24))
            //            .scaleEffect(scale)
                .onTapGesture {
                    scale += 1
                    
                    scaleUp.toggle()
                }
                .animation(.easeOut(duration: 1), value: scale)
        }
    }
}

#Preview {
    ImplicitAnimationView1()
}

struct AnimatableFontModifier: ViewModifier, Animatable {
    var size: Double

    var animatableData: Double {
        get { size }
        set { size = newValue }
    }

    func body(content: Content) -> some View {
        content
            .font(.system(size: size))
    }
}

extension View {
    func animatableFont(size: Double) -> some View {
        self.modifier(AnimatableFontModifier(size: size))
    }
}
