//
//  ScrollViewExamples3.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/26/24.
//

import SwiftUI

struct ScrollViewExamples3: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(1..<11) { i in
                        RoundedRectangle(cornerRadius: 20)
                        .fill(.mint.gradient)
                        .frame(width: 200, height: 200)
                    
                }
            }
            
        }
        .contentMargins(40, for: .scrollContent)
    }
}

#Preview {
    ScrollViewExamples3()
}
