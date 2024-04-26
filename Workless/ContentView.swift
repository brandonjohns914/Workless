//
//  ContentView.swift
//  Workless
//
//  Created by Brandon Johns on 4/25/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataController: DataController
    @State private var showingAddActivity = false
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    RankView()
                }
                
                Section("Your Progress") {
                    ForEach(dataController.activityProgress) { item in
                        ActivityProgressView(item: item)
                    }
                    .onDelete(perform: deleteProgress)
                }
            }
            .navigationTitle("Work Less")
            .toolbar {
                Button {
                    showingAddActivity.toggle()
                } label: {
                    Label("Add ACtivity", systemImage: "plus")
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
}
