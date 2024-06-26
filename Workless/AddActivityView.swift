//
//  AddActivityView.swift
//  Workless
//
//  Created by Brandon Johns on 4/25/24.
//

import SwiftUI

struct AddActivityView: View {
    @Environment(DataController.self) var dataController
    @Environment(\.dismiss) var dismiss
    
    @State private var unusedActivities = [Activity]()
    
    var body: some View {
        NavigationStack {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    if unusedActivities.isEmpty {
                        ContentUnavailableView("No Activities left to do", systemImage: "checkmark.rectangle.stack", description: Text("Good Job you are barely working at all!"))
                    } else {
                        ForEach(unusedActivities) { activity in
                            Button{
                                dataController.add(activity)
                                dismiss()
                            } label: {
                                VStack(alignment: .leading) {
                                    Image(activity.id)
                                        .resizable()
                                        .scaledToFit()
                                    
                                    Text(activity.id)
                                        .font(.largeTitle)
                                    
                                    Text(activity.summary)
                                        .multilineTextAlignment(.leading)
                                    
                                    HStack {
                                        Text("**Difficulty:** \(activity.difficulty)")
                                        
                                        Spacer()
                                        
                                        Text("**Time** \(activity.time)")
                                    }
                                    .padding(.top, 10)
                                }
                                .foregroundStyle(.white)
                                .padding(20)
                                .frame(maxHeight: .infinity)
                                .background(.blue.gradient)
                                .clipShape(RoundedRectangle(cornerRadius: 25))
                            }
                            .containerRelativeFrame(.horizontal)
                            .visualEffect { content, proxy in
                                content
                                    .rotation3DEffect(.degrees(proxy.frame(in: .scrollView).minX / 20 ), axis: (x: 0, y: -1, z: 0))
                            }
                            
                        }
                    }
                }
                .scrollTargetLayout()
                .fixedSize()
            }
            .navigationTitle("Add Activity")
            .scrollTargetBehavior(.viewAligned)
            .scrollIndicatorsFlash(onAppear: true)
            .contentMargins(20, for: .scrollContent)
            .onAppear {
                unusedActivities = dataController.unusedActivities
            }
        }
    }
}

#Preview {
    AddActivityView()
        .environment(DataController())
}
