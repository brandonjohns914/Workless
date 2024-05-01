//
//  SFSymbolsExample1.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

struct SFSymbolsExample1: View {
    @State private var completionCount = 0
    var body: some View {
        Button {
            completionCount += 1
        } label : {
            Label("Times Completed: \(completionCount)", systemImage: "checkmark.rectangle.stack.fill")
        }
        .symbolEffect(.bounce.wholeSymbol, value: completionCount)
        .font(.largeTitle)
    }
}

#Preview {
    SFSymbolsExample1()
}
