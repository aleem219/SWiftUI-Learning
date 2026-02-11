//
//  GrdientsBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 11/02/26.
//

import SwiftUI

struct GrdientsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//                LinearGradient(
//                    colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))],
//                    startPoint: .topLeading,
//                    endPoint: .bottom
//                )
//                RadialGradient(
//                    colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))],
//                    center: .leading,
//                    startRadius: 5,
//                    endRadius: 400
//                )
                
                AngularGradient(
                    colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))],
                    center: .topLeading,
                    angle: .degrees(180 + 45 )
                )

            )
            .frame(width: 300,height: 200)
    }
}

#Preview {
    GrdientsBootCamp()
}
