//
//  InfoView.swift
//  Swift UI Apps
//
//  Created by Yogin Kumar Suttroogun on 2026-04-28.
//

import SwiftUI

struct InfoView: View {
    
    let displayText: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundStyle(Color("InfoColor"))
            .padding(.all)
            .overlay {
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(displayText)
                }
            }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InfoView(displayText: "+1 647 555 1111", imageName: "phone.fill")
}
