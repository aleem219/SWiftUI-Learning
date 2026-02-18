//
//  ExtractedSubViewBootCamps.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 18/02/26.
//

import SwiftUI

struct ExtractedSubViewBootCamps: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)).ignoresSafeArea()
            ContentLayer
        }
    }
    
    var ContentLayer: some  View {
        HStack {
            MyItem(title: "Apple", count: 1, color: .red)
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
}

#Preview {
    ExtractedSubViewBootCamps()
}

struct MyItem: View {
    
    let title : String
    let count: Int
    let color : Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
