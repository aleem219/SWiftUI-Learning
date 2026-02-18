//
//   BindingBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 18/02/26.
//

import SwiftUI

struct _BindingBootCamp: View {
    
    @State var backGroundColor: Color = Color.green
    @State var title:String = "Title"
    
    var body: some View {
        ZStack {
            backGroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                ButtonView(title: $title, backGroundColor: $backGroundColor)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var title:String
    @Binding var backGroundColor:Color
    @State var buttonColor: Color = Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
    
    var body: some View {
        Button {
            backGroundColor = .orange
            buttonColor = Color.pink
            title = "New Title !!!!!!!!!!!"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(
                    Capsule()
                        .fill(buttonColor)
                )
                .overlay(
                    Capsule()
                        .stroke(Color.gray, lineWidth: 2)
                )
        }
    }
}


#Preview {
    _BindingBootCamp()
}
