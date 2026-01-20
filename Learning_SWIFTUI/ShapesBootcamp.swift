//
//  ShapesBootcamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 20/01/26.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 50)
//            .fill(Color.green)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.green, lineWidth: 3)
//            .stroke(Color.gray, style: StrokeStyle(lineWidth: 30,lineCap: .round, dash: [30]))
//            .stroke(Color.green, lineWidth: 5)
        
      
            .frame(width: 300,height: 200)
    }
}

#Preview {
    ShapesBootcamp()
}
