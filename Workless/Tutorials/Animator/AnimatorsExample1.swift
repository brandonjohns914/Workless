//
//  AnimatorsExample1.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

struct AnimatorsExample1: View {
    var body: some View {
            Image(systemName: "heart")
            .symbolVariant(.fill)
            .foregroundStyle(.red)
            .font(.largeTitle)
            .phaseAnimator([true, false]) { content, phase in
                content
                    .scaleEffect(phase ? 2 : 1)
            }
    }
}

#Preview {
    AnimatorsExample1()
}
