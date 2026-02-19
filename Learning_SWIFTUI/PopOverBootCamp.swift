//
//  PopOverBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 19/02/26.
//

import SwiftUI

struct PopOverBootCamp: View {
    
    @State var showNewScreen:Bool = false
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.8509803922, green: 0.9098039216, blue: 0.8509803922, alpha: 1))
                .ignoresSafeArea()
            
            VStack {
                Button("BUTTON") {
                    withAnimation(.spring()) {
                        showNewScreen.toggle()
                    }
                }
                .font(.largeTitle)
                Spacer()
            }
            
            //METHOD : 1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            
            //METHOD : 2 - TRANSITION
//            if showNewScreen {
//                NewScreen(showNewScreen: $showNewScreen)
//                    .padding(.top, 100)
//                    .transition(.move(edge: .bottom))
//                    .animation(.spring)
//            }
            
            //METHOD : 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top,100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen:View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen:Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color(#colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 0.5))
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
//                withAnimation(.spring()) {
//                    showNewScreen.toggle()
//                }
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }


        }
    }
}

#Preview {
    PopOverBootCamp()
}
