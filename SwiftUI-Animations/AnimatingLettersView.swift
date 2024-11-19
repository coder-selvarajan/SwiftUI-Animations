//
//  AnimatingLettersView.swift
//  SwiftUI-Animations
//
//  Created by Selvarajan on 18/11/24.
//


import SwiftUI

struct AnimatingLettersView: View {
    let letters = Array("Hello SwiftUI")
    
    @State var enabled = false
    @State var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id:\.self ) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(num) / 20),
                               value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { value in
                    self.dragAmount = value.translation
                }
                .onEnded { value in
                    self.dragAmount = .zero
                    self.enabled.toggle()
                }
        )
    }
}

#Preview() {
    AnimatingLettersView()
}
