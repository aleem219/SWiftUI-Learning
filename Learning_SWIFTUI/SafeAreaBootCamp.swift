//
//  SafeAreaBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 15/02/26.
//

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
        
        
        
        ScrollView {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
            
        }
        .background(
            Color.red
           //     .edgesIgnoringSafeArea(.all) // old
                .ignoresSafeArea()
//                .ignoresSafeArea(edges: .top)
        )
        
        
        //        ZStack {
        //            Color.blue
        //                .edgesIgnoringSafeArea(.all)
        //            VStack {
        //                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //                Spacer()
        //            }
        //            .frame(maxWidth: .infinity,maxHeight: .infinity)
        //            .background(.red)
        //            .edgesIgnoringSafeArea(.all)
        //        }
    }
}

#Preview {
    SafeAreaBootCamp()
}
