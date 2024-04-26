//
//  WorklessApp.swift
//  Workless
//
//  Created by Brandon Johns on 4/25/24.
//

import SwiftUI

@main
struct WorklessApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Activities", systemImage: "figure.play")
                    }
                
                AboutView()
                    .tabItem {
                        Label("How it works", systemImage: "questionmark.circle")
                    }
            }
            .environmentObject(dataController)
        }
    }
}
