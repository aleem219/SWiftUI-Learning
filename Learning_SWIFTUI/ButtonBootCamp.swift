//
//  ButtonBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 18/02/26.
//

import SwiftUI

struct ButtonBootCamp: View {
    
    @State var title:String = "This is my title"
    var body: some View {
        VStack(spacing: 20) {
            
            Text(title)
            Button("Press me!") {
                self.title = "BUTTON #1 was pressed"
            }
            .accentColor(.red)
            
            Button {
                self.title = "BUTTON #2 was pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            
            Button {
                self.title = "BUTTON #3"
            } label: {
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.gray)
                        
                    }
            }
            
            Button {
                self.title = "BUTTON #4"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.green)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Capsule()
                            .strokeBorder(Color.gray,lineWidth: 2.0)
                    )
            }


            
        }
    }
}

#Preview {
    ButtonBootCamp()
}
