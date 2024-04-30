//
//  SensoryExample1.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/30/24.
//

import SwiftUI

struct SensoryExample1: View {
    @State private var triggerEffect = false
    var body: some View {
        Button("Hit Me!") {
            triggerEffect.toggle()
        }
        .sensoryFeedback(.impact, trigger: triggerEffect)
    }
}

#Preview {
    SensoryExample1()
}
