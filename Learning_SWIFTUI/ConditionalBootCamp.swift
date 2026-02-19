//
//  ConditionalBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 19/02/26.
//

import SwiftUI

struct ConditionalBootCamp: View {
    
    @State var showCircle:Bool = false
    @State var showRectangle:Bool = false
    @State var isLoading:Bool = false
//     checking Updated workflow
    var body: some View {
        VStack(spacing: 20) {
            
            Button("IS LOADING:\(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
                    .controlSize(.large)
                    .frame(width: 70,height: 70)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.gray.opacity(0.2))
                    )
            }
            
//            Button("Circle Button:\(showCircle.description)") {
//                showCircle.toggle()
//            }
//            
//            Button("Rectangel Button:\(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100,height: 100)
//            }
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100,height: 100)
//            }
//            
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: 100)
//            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBootCamp()
}
