//
//  SafeAreInsectBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 01/03/26.
//

import SwiftUI

struct SafeAreInsectBootCamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insect")
            .navigationBarTitleDisplayMode(.inline)
//            .overlay(
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(.yellow)
//                
//                ,alignment: .bottom
//            )
            
//            .safeAreaInset(edge: .bottom,alignment: .center) {
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(.yellow)
//            }
            
//            .safeAreaInset(edge: .bottom,alignment: .leading,spacing: nil) {
//                Text("Hi")
////                    .frame(maxWidth: .infinity)
//                    .padding()
//                    .background(.yellow)
//                    .clipShape(Rectangle())
//                    .padding()
//            }
            
            .safeAreaInset(edge: .bottom,alignment: .trailing,spacing: nil) {
                Text("Hi")
//                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    .padding()
            }
            
//            .safeAreaInset(edge: .top,alignment: .trailing,spacing: nil) {
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
////                    .padding()
//                    .background(.yellow).edgesIgnoringSafeArea(.bottom)
////                    .clipShape(Rectangle())
////                    .padding()
//                
//            }


        }
    }
}

#Preview {
    SafeAreInsectBootCamp()
}
