//
//  ProfileView.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 28/02/26.
//

import SwiftUI

struct ProfileView: View {
    
    // app storage
    @AppStorage("name") var  currentUserName:String?
    @AppStorage("age") var  currentUserAge:Int?
    @AppStorage("gender") var  currentUserGender:String?
    @AppStorage("signed_in") var currentUserSignedIn:Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable().scaledToFit()
                .frame(width: 150,height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) years old")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            
            Text("SIGN OUT")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(10).onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical,40 )
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
        
    }
    
    func signOut() {
        withAnimation(.spring()) {
            currentUserName = nil
            currentUserAge = nil
            currentUserGender = nil
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
