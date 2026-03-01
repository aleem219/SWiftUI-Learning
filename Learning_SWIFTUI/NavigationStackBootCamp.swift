//
//  NavigationStackBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 01/03/26.
//

import SwiftUI

struct NavigationStackBootCamp: View {
    
    let friuts:[String] = ["Apples","Oranges","Bananas"]
    @State var statePath:[String] = []
    var body: some View {
        
        NavigationStack(path: $statePath) {
//        }
//        NavigationStack {
            ScrollView {
                VStack(spacing: 40 ) {
                    
                    Button("Super go") {
                        statePath.append(contentsOf: ["coconut","Watermelon","Mango"])
                    }
                    
                    ForEach(friuts ,id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text("Click Me : \(fruit) ")
                        }
                    }
                    
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click Me : \(x) ")
                        }
                    }
                }
            }
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            
            .navigationDestination(for: String.self) { value in
                Text("ANOTHER SCEEN : \(value) ")
            }
        }
    }
}

struct MySecondScreen:View {
    let value:Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value )")
    }
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootCamp()
}
