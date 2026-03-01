//
//  AnimationBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 19/02/26.
//

import SwiftUI

struct AnimationBootCamp: View {
    
    @State var isAnimated:Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimated.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .animation(Animation
                    .default
                    .repeatForever(autoreverses: true)
                )
                .frame(width: isAnimated ? 100 : 300,height: isAnimated ? 100 : 300)
                .offset(y: isAnimated ? 300 : 0)
            //                .animation(Animation.default.repeatForever(autoreverses: true))
            Spacer()
        }
    }
}

#Preview {
    AnimationBootCamp()
}
