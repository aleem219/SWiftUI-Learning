//
//  InitBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 12/02/26.
//

import SwiftUI

struct InitBootCamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init( count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit  {
        case apple
        case orange
    }
     
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150,height: 150)
        .background(backgroundColor)
        .cornerRadius(12)
    }
}

#Preview {
    
    HStack {
        InitBootCamp(count: 100, fruit: .apple)
        InitBootCamp(count: 46, fruit: .orange)
    }

}
