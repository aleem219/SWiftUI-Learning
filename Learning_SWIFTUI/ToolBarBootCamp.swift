//
//  ToolBarBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 01/03/26.
//

import SwiftUI

struct ToolBarBootCamp: View {
    @State private var text:String = ""
    @State private var paths:[String] = []
    var body: some View {
        NavigationStack(path: $paths) {
//        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder...", text: $text)
                        .background(.white)
                        .padding()
                    
//
//                    Text("Hi")
//                        .foregroundColor(.white)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(.blue)
                            .frame(width: 250, height: 250)
                    }
                }
             
                
            }
            .navigationTitle("Tool Bar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "flame.fill")
//            )
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Image(systemName: "flame.fill")
//                }
                
//                ToolbarItem(placement: .bottomBar) {
//                    Image(systemName: "flame.fill")
//                        .font(.largeTitle)
//                        .frame(maxWidth: .infinity,alignment: .leading)
//                        .cornerRadius(4)
//                }
                
//                ToolbarItem(placement: .bottomBar) {
//                    Image(systemName: "flame.fill")
//                        .font(.largeTitle)
//                        .frame(maxWidth: .infinity,alignment: .leading)
//                        .cornerRadius(4)
//                }
                
//                ToolbarItem(placement: .keyboard) {
//                    Image(systemName: "flame.fill")
//                }
                
//                ToolbarItem(placement: .principal ) {
//                    Image(systemName: "flame.fill")
//                }
                
                ToolbarItem(placement: .navigationBarTrailing ) {
                    HStack {
                        Image(systemName: "flame.fill")
                        Image(systemName: "heart.fill")
                    }
                }
            }
//            .toolbarVisibility(.hidden,for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen: \(value)")
            }
        }
    }
}

#Preview {
    ToolBarBootCamp()
}
