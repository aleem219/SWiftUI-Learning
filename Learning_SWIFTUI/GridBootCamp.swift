//
//  GridBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 15/02/26.
//

import SwiftUI

struct GridBootCamp: View {
    
    let columns:[GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        
        
        //                GridItem(.flexible(), spacing: nil, alignment: nil),
        //                GridItem(.flexible(), spacing: nil, alignment: nil),
        //                GridItem(.flexible(), spacing: nil, alignment: nil),
        //                GridItem(.flexible(), spacing: nil, alignment: nil),
        //                GridItem(.flexible(), spacing: nil, alignment: nil),
        
        //        GridItem(.adaptive(minimum:  10, maximum: 300), spacing: nil, alignment: nil),
        
    ]
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],content: {
                
                Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .font(.title)
                    .background(Color.blue)
                    .padding()
                        , content: {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                })
                
                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .font(.title)
                    .background(Color.red)
                    .padding()
                        , content: {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.green)
                            .frame(height: 150)
                    }
                })
            })
        }
        
    }
    
}
#Preview {
    GridBootCamp()
}
