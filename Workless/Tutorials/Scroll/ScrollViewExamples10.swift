//
//  ScrollViewExamples10.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

struct ScrollViewExamples10: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(1..<20) { i in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.indigo.gradient)
                        .frame(height: 200)
                    
                }
            }
        }
        .scrollIndicatorsFlash(onAppear: true)
    }
}

#Preview {
    ScrollViewExamples10()
}
