//
//  ColorPickerBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 23/02/26.
//

import SwiftUI

struct ColorPickerBootCamp: View {
    @State var backGroundColor:Color = .green
    var body: some View {
        ZStack {
            backGroundColor.ignoresSafeArea()
            ColorPicker("Select a color",
                        selection: $backGroundColor,
                        supportsOpacity: true)
            .padding()
            .background(.black)
            .cornerRadius(20)
            .foregroundColor(.white)
            .font(.headline)
            .padding(20)
        }
        
    }
}

#Preview {
    ColorPickerBootCamp()
}
