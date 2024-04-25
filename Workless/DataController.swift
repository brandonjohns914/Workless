//
//  DataController.swift
//  Workless
//
//  Created by Brandon Johns on 4/25/24.
//

import Foundation

class DataController: ObservableObject {
    private(set) var allActivities = Bundle.main.decode("Activities.json", as: [Activity].self)
    @Published private(set) var activityProgress: [ActivityProgress]
    
    private let savePath = URL.documentsDirectory.appendingPathComponent("SavedProgress")
    
    var unusedActivities: [Activity] {
        allActivities.filter { item in
            activityProgress.contains { other in
                item.id == other.id
            } == false
        }
    }
    
    var rankImage: String {
        let rankLevel = totalProgress / 10
        return "Rank Level \(rankLevel + 1)"
    }
    
    var totalProgress: Int {
        activityProgress.reduce(0) { $0 + $1.level}
    }

    var progressTowardsNextRank: Double {
        Double(totalProgress % 10) / 10
    }
    
    init() {
        do {
            // attempt toload saved data for this app
            let data = try Data(contentsOf: savePath)
            activityProgress = try JSONDecoder().decode([ActivityProgress].self, from: data)
        } catch {
            // Loading Failed, so starting with an empty array
            activityProgress = []
        }
    }
    
    func save() {
        do {
            let data = try JSONEncoder().encode(activityProgress)
            try data.write(to: savePath, options: [.atomic, .completeFileProtection])
        } catch {
            print("Unable to save data")
        }
    }
    
    func add(_ activity: Activity) {
        let newProgress = ActivityProgress(id: activity.id)
        activityProgress.append(newProgress)
        save()
    }
    
    func removeProgress(atOffsets offsets: IndexSet) {
        activityProgress.remove(atOffsets: offsets)
        save()
    }
    
    func add(to progress: ActivityProgress) {
        guard let index = activityProgress.firstIndex(of: progress) else {return}
        
        activityProgress[index].level += 1
        save() 
    }
    
}
