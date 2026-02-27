//
//  AppStorageBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 27/02/26.
//

import SwiftUI

struct AppStorageBootCamp: View {
    @AppStorage("name") var currentUserName:String?
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            if let name = currentUserName {
                Text(name)
            }
            
            Button("SAVE") {
                let name = "Ayaz Ahmad"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
        
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageBootCamp()
}
