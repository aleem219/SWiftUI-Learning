//
//  BackgroundMaterialBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 28/02/26.
//

import SwiftUI

struct BackgroundMaterialBootCamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
            RoundedRectangle(cornerRadius: 20)
                    .frame(width: 30,height: 4)
                    .padding()
                    Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(10)
        }
        .ignoresSafeArea()
        .background(Image("me"))
    }
}

#Preview {
    BackgroundMaterialBootCamp()
}
