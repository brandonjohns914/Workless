//
//  ScrollViewExamples4.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/27/24.
//

import SwiftUI

struct ScrollViewExamples4: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(1..<11) { i in
                RoundedRectangle(cornerRadius: 20)
                        .fill(.teal.gradient)
                        .frame(height: 200)
                        //.containerRelativeFrame(.horizontal, count: 3, span: 2, spacing: 10)
                        .containerRelativeFrame(.horizontal)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
        .contentMargins(.horizontal, 40, for: .scrollContent)
    }
}

#Preview {
    ScrollViewExamples4()
}
