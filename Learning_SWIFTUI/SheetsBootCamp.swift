//
//  SheetsBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 19/02/26.
//

import SwiftUI

struct SheetsBootCamp: View {
    
    @State var showSheet:Bool = false
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.8509803922, green: 0.9098039216, blue: 0.8509803922, alpha: 1))
                .ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(Color(#colorLiteral(red: 0.8509803922, green: 0.9098039216, blue: 0.8509803922, alpha: 1)))
                    .font(.headline)
                    .padding(20)
                    .background(.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                SecondScreen()
//            }

        }
    }
}


struct SecondScreen:View {
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color(#colorLiteral(red: 0, green: 0.5603090525, blue: 0, alpha: 1))
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(#colorLiteral(red: 0.9411764706, green: 0.968627451, blue: 0.9411764706, alpha: 1)))
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

#Preview {
    SheetsBootCamp()
//    SecondScreen()
}
