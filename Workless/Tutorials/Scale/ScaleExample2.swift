//
//  ScaleExample2.swift
//  Workless
//
//  Created by Brandon Johns on 5/1/24.
//

import SwiftUI

struct ScaleExample2: View {
    @State private var size = 50.0
    var body: some View {
        VStack{
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
                                .hueRotation(i.isMultiple(of: 2) ? -.degrees(proxy.frame(in: .global).minY / 20) : -.degrees(proxy.frame(in: .global).minY))
                            
                        }
                }
            }
            .contentMargins(.trailing, 10, for: .scrollContent)
            .coordinateSpace(name: "Custom")
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
}

#Preview {
    ScaleExample2()
}
