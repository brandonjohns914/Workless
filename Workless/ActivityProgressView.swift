//
//  ActivityProgressView.swift
//  Workless
//
//  Created by Brandon Johns on 4/25/24.
//

import SwiftUI

struct ActivityProgressView: View {
    @Environment(DataController.self) var dataController
    var item: ActivityProgress
    
    var body: some View {
        let _ = print("Invoking body of \(item.id)")
        HStack {
            Image(item.id)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading){
                Text(item.id)
                ProgressView(value: item.completion)
                    .tint(item.isComplete ? .green : .accentColor)
            }
            
            Button {
                withAnimation {
                    dataController.add(to: item)
                }
            } label: {
                Label(item.progressTitle, systemImage: item.progressIcon)
                    .labelStyle(.iconOnly)
            }
            .disabled(item.isComplete)
            .buttonStyle(.bordered)
            .clipShape(Circle())
        }
    }
}



