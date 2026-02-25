//
//  TapGestureBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 25/02/26.
//

import SwiftUI

struct TapGestureBootCamp: View {
    @State var isSelected:Bool = false
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green :  Color.red)
            Button {
                isSelected .toggle()
            } label: {
                Text("Buttton")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(.brown)
                    .cornerRadius(20)
            }
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.brown)
                .cornerRadius(20)
//                .onTapGesture {
//                    isSelected .toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected .toggle()
                }
            Spacer()
        }
        .padding(20)
    }
}

#Preview {
    TapGestureBootCamp()
}
