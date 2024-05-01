//
//  ScrollViewExamples5.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/29/24.
//

import SwiftUI

struct ScrollViewExamples5: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(1..<11) { i in
                RoundedRectangle(cornerRadius: 20)
                        .fill(.teal.gradient)
                        .frame(height: 200)
                        //.containerRelativeFrame(.horizontal, count: 3, span: 2, spacing: 10)
                        .containerRelativeFrame(.horizontal, alignment: .center) { size, axis in
                            size - 80
                        }
                        .padding(40)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
            }
}

#Preview {
    ScrollViewExamples5()
}
