//
//  ContentView.swift
//  Workless
//
//  Created by Brandon Johns on 4/25/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(DataController.self) var dataController
    @State private var showingAddActivity = false
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    RankView()
                }
                
                Section("Your Progress") {
                    if (dataController.activityProgress.isEmpty) {
                        ContentUnavailableView {
                            Label("No Activities", systemImage: "figure.walk.circle.fill")
                        } description: {
                            Text("Please add some activities")
                        } actions: {
                            Button {
                                showingAddActivity.toggle()
                            } label: {
                                Label("Add Activity", systemImage: "figure.walk.circle")
                            }
                            .buttonStyle(.borderedProminent)
                            .foregroundStyle(.white)
                        }
                        .sheet(isPresented: $showingAddActivity) {
                            AddActivityView()
                        }

                        
                    } else {
                        ForEach(dataController.activityProgress) { item in
                            
                            ActivityProgressView(item: item)
                        }
                        .onDelete(perform: deleteProgress)
                    }
                }
            }
            .navigationTitle("Work Less")
            .scrollIndicatorsFlash(onAppear: true)
            .scrollIndicatorsFlash(trigger: dataController.activityProgress.count)
            .toolbar {
                Button {
                    showingAddActivity.toggle()
                } label: {
                    Label("Add Activity", systemImage: "plus")
                        .visualEffect { content, proxy in
                            content.hueRotation(-.degrees(proxy.size.width))
                        }
                }
            }
            .sheet(isPresented: $showingAddActivity) {
                AddActivityView()
            }
        }
    }
    
    func deleteProgress(_ indexSet: IndexSet) {
        dataController.removeProgress(atOffsets: indexSet)
    }
}

#Preview {
    ContentView()
        .environment(DataController())
}
