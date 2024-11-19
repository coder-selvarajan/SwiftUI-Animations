//
//  AnimatingGesturesView.swift
//  SwiftUI-Animations
//
//  Created by Selvarajan on 18/11/24.
//

import SwiftUI

struct AnimatingGesturesView: View {
    @State var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(colors: [.blue, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(.rect(cornerRadius: 20))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        self.dragAmount = value.translation
                    }
                    .onEnded({ _ in
                        withAnimation(.bouncy) {
                            self.dragAmount = .zero
                        }
                    })
            )
            // with implicit animation approach
//            .animation(.bouncy, value: dragAmount)
    }
    
}

#Preview() {
    AnimatingGesturesView()
}
