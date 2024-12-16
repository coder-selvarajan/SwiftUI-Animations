//
//  TypeWriterAnimation.swift
//  SwiftUI-Animations
//
//  Created by Selvarajan on 15/12/24.
//

import SwiftUI

struct TypeWriterAnimation: View {
    @State private var value = 0
    let message = "This is a very long piece of text that appears letter by letter."
    
    var body: some View {
        VStack {
            TypewriterText(string: message, count: value)
                .frame(width: 200, alignment: .topLeading)
            
            Button("Type!") {
                withAnimation(.linear(duration: 2)) {
                    value = message.count
                }
            }
            
            Button("Reset") {
                value = 0
            }
        }
    }
}

struct TypewriterText: View, Animatable {
    var string: String
    var count = 0
    
    var animatableData: Double {
        get { Double(count) }
        set { count = Int(max(0, newValue)) }
    }
    
    var body: some View {
        let stringToShow = String(string.prefix(count))
        ZStack {
            Text(string)
                .hidden()
                .overlay(
                    Text(stringToShow),
                    alignment: .topLeading
                )
        }
        
    }
}

#Preview {
    TypeWriterAnimation()
}
