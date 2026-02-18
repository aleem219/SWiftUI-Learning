//
//  ExtractedFunctionBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 18/02/26.
//

import SwiftUI

struct ExtractedFunctionBootCamp: View {
    @State var backGroudColor:Color = Color.pink
    var body: some View {
        ZStack {
            backGroudColor.ignoresSafeArea()
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("title")
                .font(.largeTitle)
            Button {
                buttonPressed()
            } label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(15)
            }
            
        }
    }
    
    func buttonPressed() {
        backGroudColor = .yellow
    }
}



#Preview {
    ExtractedFunctionBootCamp()
}
