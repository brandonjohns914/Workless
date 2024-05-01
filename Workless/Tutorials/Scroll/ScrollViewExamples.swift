//
//  ScrollViewExamples.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/26/24.
//

import SwiftUI

struct ScrollViewExamples: View {
    var body: some View {
        ScrollView {
            ForEach(0..<100) { i in
                    Text("Item \(i)")
                    .frame(maxWidth: .infinity)
                    .frame(height: 135)
                    .background(.blue)
                    .padding(.horizontal)
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    ScrollViewExamples()
}
