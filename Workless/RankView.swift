//
//  RankView.swift
//  Workless
//
//  Created by Brandon Johns on 4/26/24.
//

import SwiftUI

struct RankView: View {
    @EnvironmentObject var dataController: DataController
    var body: some View {
        if dataController.activityProgress.isEmpty {
            ContentUnavailableView("No Activities", systemImage: "star.slash")
        } else {
            Image(dataController.rankImage)
                .resizable()
                .scaledToFit()
                .phaseAnimator([false, true], trigger: dataController.rankImage) { content, phase in
                    content
                        .scaleEffect(phase ? 1.2 : 1 )
                }
                .padding(60)
                .overlay(
                    Circle()
                        .trim(from: 0.0, to: dataController.progressTowardsNextRank)
                        .stroke(.angularGradient(colors: [.rankStart, .rankEnd], center: .center, startAngle: .zero, endAngle: .degrees(350)), style: .init(lineWidth: 10, lineCap: .round))
                        .rotationEffect(.degrees(-90))
                        .animation(.easeInOut, value: dataController.progressTowardsNextRank)
                )
                .contentTransition(.opacity)
        }
    }
}

#Preview {
    RankView()
        .environmentObject(DataController())
}
