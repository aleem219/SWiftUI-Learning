//
//  MenuBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 01/03/26.
//

import SwiftUI

struct MenuBootCamp: View {
    var body: some View {
        Menu("Click me") {
            Button("One") {
                print("")
            }
            
            Button("Two") {
                print("")
            }
            
            Button("Three") {
                print("")
            }
        }
    }
}

#Preview {
    MenuBootCamp()
}
