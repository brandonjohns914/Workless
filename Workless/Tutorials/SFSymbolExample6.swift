//
//  SFSymbolExample6.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

struct SFSymbolExample6: View {
    @State private var triggerAnimation = false
    var body: some View {
        Button {
            triggerAnimation.toggle()
        } label : {
            Label("Taste the Rainbow!", systemImage: "rainbow")
        }
            .symbolRenderingMode(.multicolor)
            .symbolEffect(.variableColor.iterative.reversing.hideInactiveLayers)
            .font(.largeTitle)
    }
}

#Preview {
    SFSymbolExample6()
}
