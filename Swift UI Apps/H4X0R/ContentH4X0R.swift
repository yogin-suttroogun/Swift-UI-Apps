//
//  ContentH4X0R.swift
//  Swift UI Apps
//
//  Created by Yogin Kumar Suttroogun on 2026-04-28.
//

import SwiftUI
import Combine

struct ContentH4X0R: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R News")
        .onAppear {
            Task {
                await self.networkManager.fetchData()
            }
        }
    }
}

#Preview {
    ContentH4X0R()
}
