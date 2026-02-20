//
//  ListBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 20/02/26.
//

import SwiftUI

struct ListBootCamp: View {
    
    @State var fruits:[String] = ["Apple","Orange","Banane","Peach"]
    @State var veggies:[String] = ["tomato ","potato","carrot"]
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit)
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(.vertical)
                        }
                        .onDelete(perform: deleteRow)
                        .onMove(perform: moveRow)
                        .listRowBackground(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
                    }
                
                Section(
                    header: Text("Veggies")) {
                        ForEach(veggies, id: \.self) { veggies in
                            Text(veggies)
                        }
                    }
            }
            .accentColor(.green)
            //.listStyle(DefaultListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            addFruits()
        })
    }
    
    func deleteRow(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func moveRow(indicies: IndexSet, newOffSet: Int) {
        fruits.move(fromOffsets: indicies, toOffset: newOffSet)
    }
    
    func addFruits() {
        fruits.append("Coconuts")
    }
}

#Preview {
    ListBootCamp()
}
