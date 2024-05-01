//
//  AnimatorsExample2.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

struct AnimatorsExample2: View {
    var body: some View {
            Image(systemName: "heart")
            .symbolVariant(.fill)
            .foregroundStyle(.red)
            .font(.largeTitle)
            .phaseAnimator([true, false]) { content, phase in
                content
                    .scaleEffect(phase ? 2 : 1)
            } animation: { phase in
                if phase {
                    .easeIn
                } else {
                    .snappy
                }
            }
    }
}

#Preview {
    AnimatorsExample2()
}
