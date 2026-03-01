//
//  NavigationSplitViewBootcamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 01/03/26.
//

import SwiftUI

//  NavigationSplitView - iPad, MacOS,VisionOS

struct NavigationSplitViewBootcamp: View {
    @State private var visbility:NavigationSplitViewVisibility = .automatic
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruits? = nil
    var body: some View {
        
        NavigationSplitView(columnVisibility: $visbility) {
//            List(FoodCategory.allCases,id: \.self, selection: $selectedCategory) { category in
//                Button(category.rawValue.capitalized) {
//                    selectedCategory = category
//                }
//            } // this one from tutorial which was not working
            
            List(FoodCategory.allCases, id: \.self, selection: $selectedCategory) { category in
//                Text(category.rawValue.capitalized) //
                NavigationLink(category.rawValue.capitalized, value: category) // use this again
            } // this is from Chatgpt so its working a lil bit confusing

            //            List {
//                ForEach(FoodCategory.allCases,id: \.self) { category in
//                    Button(category.rawValue.capitalized) {
//                        selectedCategory = category
//                    }
//                }
//            }
            .navigationTitle("Categories")
        } content: {
//            Color.blue
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruits:
                        List(Fruits.allCases, id: \.self, selection: $selectedFruit) { fruit in
//                            Text(fruit.rawValue.capitalized)
                            NavigationLink(fruit.rawValue.capitalized, value: fruit) // use this again
                        }
                        
//                        List {
//                            ForEach(Fruits.allCases,id: \.self) { fruit in
//                                Button(fruit.rawValue.capitalized) {
//    //                                selectedCategory = category
//                                    selectedFruit = fruit
//                                    print("")
//                                }
//                            }
//                        }
                    
                    case .vegitables:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            } else {
                Text("Select a category to begin!")
            }
        } detail: {
            if let selectedFruit {
                Text("You Selcted: \(selectedFruit.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            }
            else {
                Text("Select Something!")
            }
        }
//        .navigationSplitViewStyle(.balanced)
//        .navigationSplitViewStyle(.automatic)
        .navigationSplitViewStyle(.prominentDetail)
      
        
//

//        NavigationSplitView {
//            Color.red.ignoresSafeArea()
//        } detail: {
//            Color.blue.ignoresSafeArea()
//        }

    }
}

#Preview {
    NavigationSplitViewBootcamp()
}


enum FoodCategory:String,CaseIterable {
    case fruits, vegitables, meats
}

enum Fruits:String,CaseIterable {
    case apple, banana, orange
}
