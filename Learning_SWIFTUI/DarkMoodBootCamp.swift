//
//  DarkMoodBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 25/02/26.
//

import SwiftUI
//Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1))
struct DarkMoodBootCamp: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is Primary")
                        .foregroundColor(.primary)
                    Text("This color is Secondary")
                        .foregroundColor(.secondary)
                    Text("This color is Black")
                        .foregroundColor(.black)
                    Text("This color is White")
                        .foregroundColor(.white)
                    Text("This color is Red")
                        .foregroundColor(.red)
                    Text("This color is Globally Adaptive!")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is Locally Adaptive!")
                        .foregroundColor(colorScheme == .light ?.green : .yellow)
                    
                }
            }.navigationTitle("Dark Mood Bootcamp")
        }
    }
}

struct DarkMoodBootCamp_Peviews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkMoodBootCamp()
                .preferredColorScheme(.light)
            
            DarkMoodBootCamp()
                .preferredColorScheme(.dark)
        }
    }
}
