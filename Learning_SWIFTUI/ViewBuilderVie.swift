//
//  ViewBuilderVie.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 11/02/26.  // for me.
//

import SwiftUI

struct ViewBuilderVie: View {
    @State private var isShow: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Toggle View") {
                if isShow {
                    isShow = false
                } else {
                    isShow = true
                }
            }
            
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(8)
            
            stackView
        }
        .animation(.easeInOut, value: isShow)
    }
    
    private var stackView: some View {
        if isShow {
            return AnyView(
                Rectangle()
                    .frame(width: 200,height: 300)
                    .padding()
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(10)
            )
        } else {
            return AnyView(
                Circle()
                    .frame(width: 200,height: 300)
                    .background(Color.green.opacity(0.2))
                    .cornerRadius(10)
                    .padding()
            )
        }
    }
}

#Preview {
    ViewBuilderVie()
}
