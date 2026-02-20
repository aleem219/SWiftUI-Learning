//
//  NavigationVieBootcamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 20/02/26.
//

import SwiftUI

struct NavigationVieBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                
                NavigationLink("Hello, World",
                               destination: MyOtherScreen())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
            }
            .navigationTitle("All Inboxes")
            //            .navigationBarTitleDisplayMode(.automatic)
            //            .navigationBarHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image(systemName: "person.circle")
                        Image(systemName: "flame.fill")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: MyOtherScreen()) {
                        Image(systemName: "gear")
                    }
                    .accentColor(.red)
                }
                
            }
            
        }
    }
}


struct MyOtherScreen:View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            
            VStack {
                
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click Here",
                               destination: Text("3rd Screen"))
            }
        }
    }
}

#Preview {
    NavigationVieBootcamp()
}



// Createing PR from main to ABDul_dev
