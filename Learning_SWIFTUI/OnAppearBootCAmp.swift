//
//  OnAppearBootCAmp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 25/02/26.
//

import SwiftUI

struct OnAppearBootCAmp: View {
    @State  var myText: String  = "Start Text.."
    @State var count:Int = 0
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 250)
                            .padding()
                            .onAppear(perform:{
                                count += 1
                            })
                        
                    }
                }
            }
            .onAppear(perform:{
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is new text"
                }
               
            })
            
            .navigationTitle("OnAppear: \(count)")
        }
    }
}

#Preview {
    OnAppearBootCAmp()
}


//.onDisappear(perform:{
//    myText = "Ending Text"
//})
//
//
//LazyVStack {
//    ForEach(0..<50) { _ in
//        RoundedRectangle(cornerRadius: 25)
//            .frame(height: 250)
//            .padding()
//            .onAppear(perform:{
//                
//            })
//        
//    }
//}
