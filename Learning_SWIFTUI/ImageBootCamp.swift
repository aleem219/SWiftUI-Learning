//
//  ImageBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 11/02/26.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        Image("google")
        //            .renderingMode(.template)
            .resizable()
        //            .aspectRatio(contentMode: .fit)
        //            .scaledToFit()
        //            .scaledToFill()
            .scaledToFit()
            .frame(width: 300,height: 200)
            .foregroundColor(.red)
        //            .cornerRadius(150)
        // .clipShape(
        //                Circle()
        //                RoundedRectangle(cornerRadius:15.0)
        //                Ellipse()
        //    Circle()
        //)
    }
}

#Preview {
    ImageBootCamp()
}
