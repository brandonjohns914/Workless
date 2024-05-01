//
//  SFSymbolsExample2.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

struct SFSymbolsExample2: View {
    @State private var completionCount = 0
    var body: some View {
        Button {
            completionCount += 1
        } label : {
            Label("Times Completed: \(completionCount)", systemImage: "checkmark.rectangle.stack.fill")
        }
        .symbolEffect(.bounce.down, options: .repeat(3).speed(0.2), value: completionCount)
        .font(.largeTitle)
    }
}

#Preview {
    SFSymbolsExample2()
}
