//
//  ScrollViewExample12.swift
//  Workless
//
//  Created by Brandon Johns on 5/1/24.
//

import SwiftUI

struct ScrollViewExample12: View {
    var body: some View {
        ScrollView {
            ForEach(0..<100) { i in
                    Text("This is an example message bubble.")
                    .padding(8)
                    .foregroundStyle(.white)
                    .background(.blue.gradient)
                    .clipShape(Capsule())
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .visualEffect { content, proxy in
                        content
                            .hueRotation(-.degrees(proxy.frame(in: .global).minY / 20))
                            
                    }
            }
        }
        .contentMargins(.trailing, 10, for: .scrollContent)
    }
}

#Preview {
    ScrollViewExample12()
}
