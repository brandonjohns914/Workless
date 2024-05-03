//
//  ContentUnavailableExample.swift
//  WorklessExampleCode
//
//  Created by Brandon Johns on 4/26/24.
//

import SwiftUI

struct ContentUnavailableExample: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Example 1") {
                ContentUnavailableView {
                Label("No Notes", systemImage: "doc.text")
                    
                } description: {
                    Text("You havent created any notes yet.")
                } actions: {
                    Button {
                        ///
                    } label: {
                        Label("Create a new note", systemImage: "plus")
                    }
                }
            }
            
            NavigationLink("Example 2") {
                ContentUnavailableView("No music", systemImage: "music.note")
            
            }
        }
    }
}

#Preview {
    ContentUnavailableExample()
}
