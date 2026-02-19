//
//  AnimationTimingBootcamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 19/02/26.
//

import SwiftUI


struct AnimationTimingBootcamp: View {
    
    @State var isAnimating:Bool = false
    let timming: Double = 10.0
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: isAnimating ? 350 : 50,height: 100)
//                .animation(Animation.linear(duration: timming), value: isAnimating)
//                .animation(.spring, value: isAnimating)
                .animation(.spring(response: 1.0,dampingFraction: 0.7,blendDuration: 1.0), value: isAnimating)
            
            
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}

