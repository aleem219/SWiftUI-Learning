//
//  FocusBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 28/02/26.
//

import SwiftUI

enum onBoardingField: Hashable   {
    case username
    case password
}

struct FocusBootCamp: View {
    
//    @FocusState  private var usernameInFocus:Bool
    @State private var username:String = ""
//    @FocusState  private var passswordInFocus:Bool
    @State private var password:String = ""
    @FocusState private var fieldInFocus: onBoardingField?
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
//                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 45)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
            
            TextField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
//                .focused($passswordInFocus)
                .padding(.leading)
                .frame(height: 45)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
            
            
            Button("SIGN UP") {
                let userameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if userameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if userameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passswordInFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passswordInFocus = false
                }
            }
            
//
        }
        .padding(40)
//        .onAppear() {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                usernameInFocus = true
//            }
//        }
        
    }
}

#Preview {
    FocusBootCamp()
}
