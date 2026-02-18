//
//  StateBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 18/02/26.
//

import SwiftUI

struct StateBootCamp: View {
    
   @State var backGroudColor:Color = Color.green
    @State var myTitle:String = "My Title"
    @State var count:Int = 0
    
    
    var body: some View {
        ZStack {
            backGroudColor
            .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backGroudColor = .red
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backGroudColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    StateBootCamp()
}
