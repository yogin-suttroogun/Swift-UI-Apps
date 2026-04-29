//
//  ContentForBusinessCard.swift
//  Swift UI Apps
//
//  Created by Yogin Kumar Suttroogun on 2026-04-28.
//

import SwiftUI

struct ContentForBusinessCard: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .ignoresSafeArea(.all)
            VStack {
                Image("yogin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(Color.white, lineWidth: 5)
                    }
                Text("Yogin Suttroogun")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(Color("InfoColor"))
                Text("iOS developer")
                    .foregroundColor(Color("InfoColor"))
                    .font(.system(size: 25))
                Divider()
                InfoView(displayText: "+1 647 555 1111", imageName: "phone.fill")
                InfoView(displayText: "yo.suttroogun@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentForBusinessCard()
}
