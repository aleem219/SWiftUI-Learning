//
//  SpacerBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 12/02/26.
//

import SwiftUI

struct SpacerBootCamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(.yellow)
            .padding(.horizontal)
//            .background(.blue)
            Spacer()
            
                Rectangle()
                    .frame(height: 55)
        }
        
//        .background(Color.yellow)
        
    }
}

#Preview {
    SpacerBootCamp()
}
