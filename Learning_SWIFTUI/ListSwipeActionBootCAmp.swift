//
//  ListSwipeActionBootCAmp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 28/02/26.
//

import SwiftUI

struct ListSwipeActionBootCAmp: View {
    @State var fruits:[String] = ["Apple","Orange","Banane","Peach"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
            }
//            .onDelete(perform: onDelete)
            .swipeActions(edge: .trailing,allowsFullSwipe: true) {
                Button("Archieve") {
                    print("")
                }
                .tint(.green)
                Button("Save") {
                    print("")
                }
                .tint(.blue)
                Button("Junk") {
                    print("")
                }
                .tint(.black)
            }
            
            
            .swipeActions(edge: .leading,allowsFullSwipe: false) {
                Button("Shared") {
                    print("")
                }
                .tint(.yellow)
            }
        }
    }
    
    func onDelete(indexSet:IndexSet) {
        
    }
}

#Preview {
    ListSwipeActionBootCAmp()
}
