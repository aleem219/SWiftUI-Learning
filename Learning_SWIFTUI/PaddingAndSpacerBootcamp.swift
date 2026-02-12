//
//  PaddingAndSpacerBootcamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 12/02/26.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading ) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This iss description of what  will do n this screen. It is multiple lines and we will alighn the text to the eading edge.")
        }
        
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.30),
                    radius: 12,
                    x: 0.0,y: 10
                )
        )
        .padding(.horizontal, 10)
        
        
        
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
