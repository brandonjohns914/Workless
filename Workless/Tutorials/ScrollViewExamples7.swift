//
//  ScrollViewExamples7.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

struct ScrollViewExamples7: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(1..<11) { i in
                        RoundedRectangle(cornerRadius: 20)
                        .fill(.indigo.gradient)
                        .frame(height: 200)
                        .scrollTransition(topLeading: .identity, bottomTrailing: .animated(.spring(duration: 0.5, bounce: 0.7))) {
                            content, phase in
                                content
                                    .scaleEffect(phase == .bottomTrailing ? 0.8 : 1)
                        }
                }
            }
        }
    }
}

#Preview {
    ScrollViewExamples7()
}
