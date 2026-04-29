//
//  HomepageContent.swift
//  Swift UI Apps
//
//  Created by Yogin Kumar Suttroogun on 2026-04-28.
//

import SwiftUI

let listOfPOCs = [
    LearningItems(id: .swiftUI, text: "Hello SwiftUI world!"),
    LearningItems(id: .businessCard, text: "Content for business card"),
    LearningItems(id: .hacker, text: "H4X0R"),
]

enum LearningRoute: String {
    case swiftUI
    case businessCard
    case hacker
}

struct LearningItems: Identifiable {
    var id: LearningRoute
    var text: String
}

struct HomepageContent: View {
    var body: some View {
        NavigationView {
            List(listOfPOCs) { item in
                NavigationLink(destination: destinationView(for: item)) {
                    Text(item.text)
                }
            }
            .navigationTitle("Home")
        }
    }
}

@ViewBuilder
private func destinationView(for item: LearningItems) -> some View {
    switch item.id {
    case .swiftUI:
        ContentView()
    case .businessCard:
        ContentForBusinessCard()
    case .hacker:
        ContentH4X0R()
    }
}

#Preview {
    HomepageContent()
}
