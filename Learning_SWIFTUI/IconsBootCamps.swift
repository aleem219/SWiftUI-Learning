//
//  IconsBootCamps.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 11/02/26.
//

import SwiftUI

struct IconsBootCamps: View {
    var body: some View {
      Image(systemName: "heart.fill")
            .resizable()
//            .aspectRatio(contentMode:  .fit)
//            .scaledToFit()
            .scaledToFill()
        //    .font(.caption)
//            .font(.system(size: 200))
            .foregroundColor(Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)))
            .frame(width: 300,height: 300)
//            .clipped()
    }
}

#Preview {
    IconsBootCamps()
}
