//
//  DetailView.swift
//  Swift UI Apps
//
//  Created by Yogin Kumar Suttroogun on 2026-04-28.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
