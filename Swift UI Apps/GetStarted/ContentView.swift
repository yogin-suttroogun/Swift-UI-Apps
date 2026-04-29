//
//  ContentView.swift
//  Swift UI Apps
//
//  Created by Yogin Kumar Suttroogun on 2026-04-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray3)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Hello SwiftUI world!")
                    .font(.system(.largeTitle))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                Image(systemName: "swift")
                    .symbolRenderingMode(.monochrome)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .foregroundStyle(Color.red)
            }
        }
    }
}

#Preview {
    ContentView()
}
