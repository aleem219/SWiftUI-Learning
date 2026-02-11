//
//  BackGroundAnd OverlayBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 11/02/26.
//

import SwiftUI

struct BackGroundAnd_OverlayBootCamp: View {
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .background(
        //                Color.red
        //                LinearGradient(colors: [Color(#colorLiteral(red: 0.85098, green: 0.9098, blue: 0.85098, alpha: 1)), Color(#colorLiteral(red: 0.72156, green: 0.88627, blue: 0.59215, alpha: 1))],
        //                               startPoint: .leading,
        //                               endPoint: .top )
        //                Circle()
        //                    .fill(LinearGradient(colors: [.green, .blue], startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 100,height: 100,alignment: .center)
        //            )
        //
        //            .background(
        //                Circle()
        //                    .fill(LinearGradient(colors: [.green, .blue], startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 1200,height: 120,alignment: .center)
        //            )
        
        //        Circle()
        //            .fill(.pink)
        //            .frame(width: 100,height: 100)
        //            .overlay (
        //                Text("1")
        //                    .font(.largeTitle)
        //                    .foregroundColor(.white)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(.purple)
        //                    .frame(width: 110,height: 110)
        //            )
        
        //        Rectangle()
        //            .frame(width: 100,height: 100)
        //            .overlay (
        //                Rectangle()
        //                    .fill(.blue)
        //                    .frame(width: 50,height: 50)
        //                ,alignment: .topLeading
        //            )
        //            .background(
        //                Rectangle()
        //                    .fill(.red)
        //                    .frame(width: 150,height: 150)
        //                ,alignment: .bottomTrailing
        //            )
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill( LinearGradient(colors: [ Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 100,height: 100)
                    .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 0.5)), radius: 10,x: 0.0,y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35,height: 35)
                            .overlay(
                                Text("8")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 0.5)), radius: 10,x: 5 ,y: 5)
                        ,alignment: .bottomTrailing)
                    
            )
        
    }
    
 
}

#Preview {
    BackGroundAnd_OverlayBootCamp()
}
