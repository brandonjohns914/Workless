//
//  ScaleExample.swift
//  Workless
//
//  Created by Brandon Johns on 5/1/24.
//

import SwiftUI

struct ScaleExample: View {
    @State private var size = 50.0
    var body: some View {
        Circle()
            .fill(.red)
            .frame(width: size, height: size)
            //.offset(CGSize(width: 10.0, height: 10.0))
            .offset(.zero)
            .visualEffect { content, proxy in
                content.hueRotation(-.degrees(proxy.size.width))
            }
            .onAppear {
                withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: true)) {
                    size = 350
                }
            }
    }
}

#Preview {
    ScaleExample()
}
