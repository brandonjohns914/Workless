//
//  SFSymbolExample7.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

struct SFSymbolExample7: View {
    @State private var triggerAnimation = false
    var body: some View {
        Button {
            triggerAnimation.toggle()
        } label : {
            Label("Looking For Wi-Fi!", systemImage: "wifi")
        }
            .symbolEffect(.variableColor.iterative.reversing)
            .font(.largeTitle)
    }
}

#Preview {
    SFSymbolExample7()
}
