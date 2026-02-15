//
//  ScrollViewBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 14/02/26.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        //        ScrollView(.horizontal,showsIndicators: false) {
        //            HStack {
        //                ForEach(0..<50) { index in
        //                    Rectangle()
        //                        .fill(.blue)
        //                        .frame(width: 300,  height: 300)
        //                }
        //            }
        //        }
        
        ScrollView() {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 250,height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            
                        }
                    }
                    
                    
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootCamp()
}
