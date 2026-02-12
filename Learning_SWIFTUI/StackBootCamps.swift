//
//  StackBootCamps.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 12/02/26.
//

import SwiftUI

struct StackBootCamps: View {
    var body: some View {
        
//        ZStack(alignment: .top ) {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350,height: 500,alignment: .center)
//            
//            
//            VStack(alignment: .leading,spacing: 40) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150,height: 150)
//                
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100,height: 100)
//                
//                HStack(alignment: .bottom)  {
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 50,height: 50)
//                    
//                    Rectangle()
//                        .fill(Color.pink)
//                        .frame(width: 75,height: 75)
//                    
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 25,height: 25)
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//        }
        
        
        
//        HStack(alignment: .bottom) {
//            Text("Item in  your cart:")
//                .font(.caption)
//                .foregroundColor(.gray)
//            Text("5")
//                .font(.largeTitle)
//        }
        
        
//        VStack(alignment: .center,spacing: 20) {
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            Text("Item in  your cart")
//                .font(.caption)
//                .foregroundColor(.gray)
//            
//        }
        
        
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100,height: 100)
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100,height: 100)
                )
            
        }
    }
}

#Preview {
    StackBootCamps()
}
