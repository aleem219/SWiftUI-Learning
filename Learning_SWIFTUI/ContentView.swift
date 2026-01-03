//
//  ContentView.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 03/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Abdul")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
                .multilineTextAlignment(.leading)
        }
        .padding()
        // code commit after public
    }
}

#Preview {
    ContentView()
}
