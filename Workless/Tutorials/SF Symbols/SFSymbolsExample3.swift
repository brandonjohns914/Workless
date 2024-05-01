//
//  SFSymbolsExample3.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

struct SFSymbolsExample3: View {
    @State private var triggerAnimation = false
    var body: some View {
        Button {
            triggerAnimation.toggle()
        } label : {
            Label("Taste the Rainbow!", systemImage: "rainbow")
        }
            .symbolRenderingMode(.multicolor)
            .symbolEffect(.variableColor, value: triggerAnimation)
            .font(.largeTitle)
    }
}

#Preview {
    SFSymbolsExample3()
}
