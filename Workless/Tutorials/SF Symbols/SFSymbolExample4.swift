//
//  SFSymbolExample4.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

struct SFSymbolExample4: View {
    @State private var triggerAnimation = false
    var body: some View {
        Button {
            triggerAnimation.toggle()
        } label : {
            Label("Taste the Rainbow!", systemImage: "rainbow")
        }
            .symbolRenderingMode(.multicolor)
            .symbolEffect(.variableColor.hideInactiveLayers, value: triggerAnimation)
            .font(.largeTitle)
    }
}

#Preview {
    SFSymbolExample4()
}
