//
//  ScrollViewExamples6.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/29/24.
//

import SwiftUI

struct ScrollViewExamples6: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(1..<11) { i in
                        RoundedRectangle(cornerRadius: 20)
                        .fill(.indigo.gradient)
                        .frame(height: 200)
                        .scrollTransition  { content, phase in
                            content
                                .scaleEffect(phase == .bottomTrailing ? 0.8 : 1)
                        }
                }
            }
        }
    }
}

#Preview {
    ScrollViewExamples6()
}
