//
//  ScrollViewExamples8.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

struct ScrollViewExamples8: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(1..<20) { i in
                        RoundedRectangle(cornerRadius: 20)
                        .fill(.indigo.gradient)
                        .frame(height: 200)
                        .scrollTransition(topLeading: .identity, bottomTrailing: .animated(.spring(duration: 0.5, bounce: 0.7))) {
                            content, phase in
                                content
                                .offset(x: phase == .bottomTrailing ? 100 : 0)
                                .opacity(phase == .bottomTrailing ? 0 : 2)
                        }
                }
            }
        }
    }
}

#Preview {
    ScrollViewExamples8()
}
