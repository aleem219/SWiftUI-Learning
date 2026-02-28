//
//  BadgeBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 28/02/26.
//

import SwiftUI

struct BadgeBootCamp: View {
    var body: some View {
        
        List {
            Text("Hello World!")
                .badge("NEW ITEMS!")
            Text("Hello World!")
            Text("Hello World!")
            Text("Hello World!")
            Text("Hello World!")
            Text("Hello World!")
        }
        
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("Hello")
//             
//            
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//            
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

#Preview {
    BadgeBootCamp()
}
 
