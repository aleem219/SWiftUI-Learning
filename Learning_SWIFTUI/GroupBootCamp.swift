//
//  GroupBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 01/03/26.
//

import SwiftUI

struct GroupBootCamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello World")
            
            Group {
                Text("Hello World")
                Text("Hello World")
            }
            .font(.caption)
            .foregroundColor(.green)
            
            
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootCamp()
}
