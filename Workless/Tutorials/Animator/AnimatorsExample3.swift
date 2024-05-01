//
//  AnimatorsExample3.swift
//  Workless
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

enum AnimationPhases: CaseIterable {
    case start, movingUp, scalingUp, movingDown
}


struct AnimatorsExample3: View {
    @State private var isLiked = false
    
    var body: some View {
        Button {
            isLiked.toggle()
        } label: {
            Image(systemName: "heart")
                .symbolVariant(isLiked ? .fill : .none)
                .foregroundStyle(.red)
                .font(.largeTitle)
                .phaseAnimator(isLiked ? AnimationPhases.allCases : [.start], trigger: isLiked) { content, phase in
                    content
                        .scaleEffect(phase == .scalingUp ? 2 : 1)
                        .offset(y: phase != .start ? -50 : 0)
                }
        }
    }
}

#Preview {
    AnimatorsExample3()
}
