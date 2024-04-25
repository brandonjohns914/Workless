//
//  Activity.swift
//  Workless
//
//  Created by Brandon Johns on 4/25/24.
//

import Foundation

struct Activity: Codable, Equatable, Identifiable {
    var id: String
    var summary: String
    var details: String
    var materials: [String]
    var time: String
    var difficulty: String
    var benefits: [String]
}
