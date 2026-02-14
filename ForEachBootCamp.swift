//
//  ForEachBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 13/02/26.
//

import SwiftUI

struct ForEachBootCamp: View {
    
    let data:[String] = ["Hi","Hello","Hey Everyone"]
    let myString:String = "Hello"
    var body: some View {
        VStack(spacing: 12) {
//            ForEach(0..<10) { index in
//                Text("HI: this is \(index) index")
//                HStack {
//                    Circle()
//                        .frame(width: 30,height: 30)
//                    Text("HI: this is \(index) index")
//                }
//            }
            
            ForEach(data.indices,id: \.self) { index in
                Text("\(data[index])")
            }
            
        }
    }
}

#Preview {
    ForEachBootCamp()
}
 
