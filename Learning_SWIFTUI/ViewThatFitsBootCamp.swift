//
//  ViewThatFitsBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 01/03/26.
//

import SwiftUI

struct ViewThatFitsBootCamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            ViewThatFits {
                Text("This is some text that i would ike to display to the user!")
                Text("This is some text that i would ike to display!")
                Text("This is some text!")
            }
            
//            Text("This is some text that i would ike to display to the user!")
//                .lineLimit(1)
//                .minimumScaleFactor(0.3)
        }
        .frame(height: 300)
        .padding(16)
    }
}

#Preview {
    ViewThatFitsBootCamp()
}
