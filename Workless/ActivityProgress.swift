//
//  ActivityProgress.swift
//  Workless
//
//  Created by Brandon Johns on 4/25/24.
//

import Foundation

struct ActivityProgress: Codable, Equatable, Identifiable {
    var id: String
    var level = 0
    
    static var maximumLevel = 10
    
    var completion: Double {
        if isComplete {
            1
        } else {
            Double(level) / Double(Self.maximumLevel)
        }
    }

    var isComplete: Bool {
        level >= Self.maximumLevel
    }

    var progressTitle: String {
        if isComplete {
            "This activity is complete!"
        } else {
            "Add progress for \(id)"
        }
    }

    var progressIcon: String {
        if isComplete {
            "checkmark"
        } else {
            "plus"
        }
    }
}
