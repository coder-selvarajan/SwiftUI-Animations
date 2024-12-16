//
//  CustomTimingCurve.swift
//  SwiftUI-Animations
//
//  Created by Selvarajan on 15/12/24.
//

import SwiftUI

extension Animation {
    static var edgeBounce: Animation {
        Animation.timingCurve(0, 1, 1, 0)
    }

    static func edgeBounce(duration: TimeInterval = 0.2) -> Animation {
        Animation.timingCurve(0, 1, 1, 0, duration: duration)
    }
}

struct CustomTimingCurve: View {
    @State var offset = -200.0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .offset(y: offset)
            .animation(.edgeBounce(duration: 1).repeatForever(autoreverses: true),
                       value: offset)
            .onTapGesture {
                offset = 200
            }
    }
}

#Preview {
    CustomTimingCurve()
}
