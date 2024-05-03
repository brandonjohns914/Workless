//
//  WorklessApp.swift
//  Workless
//
//  Created by Brandon Johns on 4/25/24.
//

import SwiftUI

@main
struct WorklessApp: App {
    @State private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tag(0)
                    .tabItem {
                        Label("Activities", systemImage: "figure.play")
                    }
                
                AboutView()
                    .tag(1)
                    .tabItem {
                        Label("How it works", systemImage: "questionmark.circle")
                    }
            }
            .environment(dataController)
        }
    }
}
