//
//  NetworkManager.swift
//  Swift UI Apps
//
//  Created by Yogin Kumar Suttroogun on 2026-04-28.
//

import Foundation
import Combine

@MainActor
class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData() async {
        guard
            let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page")
        else { return }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            let result = try JSONDecoder().decode(PostModel.self, from: data)
            posts = result.hits
        } catch {
            print("Something went wrong!", error)
        }
    }
}

