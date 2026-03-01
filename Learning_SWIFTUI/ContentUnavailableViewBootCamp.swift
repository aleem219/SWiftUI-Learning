//
//  ContentUnavailableViewBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 01/03/26.
//

import SwiftUI

struct ContentUnavailableViewBootCamp: View {
    var body: some View {
        ContentUnavailableView.search(text: "data")
//        ContentUnavailableView.search
//        ContentUnavailableView(
//            "No internet Connection",
//            systemImage: "wifi.slash",
//            description:  Text("Plaese connect to the internet and try again."))
    }
}

#Preview {
    ContentUnavailableViewBootCamp()
}
