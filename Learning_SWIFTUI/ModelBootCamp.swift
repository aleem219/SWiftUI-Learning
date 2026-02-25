//
//  ModelBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 25/02/26.
//

import SwiftUI

struct UserModel:Identifiable {
    let id: String = UUID().uuidString
    let displayName:String
    let userName: String
    let followerCount:Int
    let isVerifies:Bool
}

struct ModelBootCamp: View {
    @State var users:[UserModel] = [
        //        "Qazi","Abdul","Aleem","Usmani"
        UserModel(displayName: "Qazi", userName: "Qazi21", followerCount: 700, isVerifies: true),
        UserModel(displayName: "Abdul", userName: "Abdul21", followerCount: 100, isVerifies: false),
        UserModel(displayName: "Aleem", userName: "Aleem21", followerCount: 900, isVerifies: false),
        UserModel(displayName: "Usmani", userName: "Usmani21", followerCount: 500, isVerifies: true),
        UserModel(displayName: "Qazi", userName: "Qazi21", followerCount: 700, isVerifies: true),
        UserModel(displayName: "Abdul", userName: "Abdul21", followerCount: 100, isVerifies: false),
        UserModel(displayName: "Aleem", userName: "Aleem21", followerCount: 900, isVerifies: false),
        UserModel(displayName: "Usmani", userName: "Usmani21", followerCount: 500, isVerifies: true),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width :30, height: 30)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerifies {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                        }
                    }
                    .padding(.vertical,10)
                }
//                ForEach(user,id: \.self) { name in
//
//                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootCamp()
}
