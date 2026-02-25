//
//  ViewModelBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 25/02/26.
//

import SwiftUI

struct FruitModel:Identifiable {
    let id: String = UUID().uuidString
    let count:Int
    let name:String
}


class FruitViewModel: ObservableObject {
    
    @Published var fruitArray:[FruitModel] = []
    @Published var isloading:Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruitOne = FruitModel(count: 1, name: "Orange")
        let fruitTwo = FruitModel(count: 2, name: "Banana")
        let fruitThree = FruitModel(count: 88, name: "Watermelon")
        
        isloading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruitOne)
            self.fruitArray.append(fruitTwo)
            self.fruitArray.append(fruitThree)
            self.isloading = false
        }
    }
    
    func deleteFruits(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootCamp: View {
    //    @State var fruitArray:[FruitModel] = []
    
    //    @ObservedObject var fruitViewModel:FruitViewModel = FruitViewModel()
    
    // @StateObject -> USE THIS ON CREATION / INIT
    // @ObservedObject -> USE THIS ON SUBVIEWS
    @StateObject var fruitViewModel:FruitViewModel = FruitViewModel()
    
    
    var body: some View {
        NavigationView {
            List {
                
                if fruitViewModel.isloading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                                .foregroundColor(.red)
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruits)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel), label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            })
            )
//            .onAppear {
//                fruitViewModel.getFruits()
//            }
        }
    }
}

struct RandomScreen: View {
    @Environment(\.presentationMode) var  presentationMode
    @ObservedObject var fruitViewModel:FruitViewModel
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    ViewModelBootCamp()
    //    RandomScreen()
}
