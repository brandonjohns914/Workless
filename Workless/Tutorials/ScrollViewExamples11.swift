//
//  ScrollViewExamples11.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

struct ScrollViewExamples11: View {
    @State private var flashNow = false
    var body: some View {
        List {
            Button("Flash Indicators") {
                flashNow.toggle()
            }
            VStack {
                ForEach(1..<20) { i in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.indigo.gradient)
                        .frame(height: 200)
                    
                }
            }
        }
        .scrollIndicatorsFlash(trigger:  flashNow)
    }
}

#Preview {
    ScrollViewExamples11()
}
