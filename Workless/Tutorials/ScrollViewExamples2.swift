//
//  ScrollViewExamples2.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/26/24.
//

import SwiftUI

struct ScrollViewExamples2: View {
    var body: some View {
        List {
            Section {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.indigo.gradient)
                    .frame(height: 200)
                    .listRowBackground(Color.clear)
                    .listRowInsets(.init())
            }
            
            ForEach(1..<101){ i in
                    Text("Row \(i)")
            }
            
            
        }
        .contentMargins(.top, 260, for: .scrollIndicators)
    }
}

#Preview {
    ScrollViewExamples2()
}
