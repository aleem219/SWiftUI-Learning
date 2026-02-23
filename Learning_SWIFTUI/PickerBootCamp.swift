//
//  PickerBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 23/02/26.
//

import SwiftUI

struct PickerBootCamp: View {
    
    @State var selection: String = "Most Recet"
    let filterOptions:[String] = [
        "Most Recet","Most Popiular","Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes:[NSAttributedString.Key:Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(
            selection: $selection,
            label: Text("Preview"),
            content: {
//                Text("1").tag(1)
//                Text("2").tag(2)
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                     
                }
            })
        .pickerStyle(SegmentedPickerStyle())
//        .background(.red)
        
//        Picker(
//            selection: $selection,
//            label:
//                HStack {
//                    Text("Filter:")
//                    Text(selection)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(Color.blue)
//                .cornerRadius(10)
//        ) {
//            ForEach(filterOptions,id: \.self) { option in
//                HStack {
//                    Text(option)
//                    Image(systemName: "heart.fill")
//                        .tag(option)
//                }
//            }
//        }
//        .pickerStyle(.menu)
        
        //        VStack {
        //            HStack {
//                        Text("Age:")
//                        Text(selection)
        //            }
        //            Picker(
        //                "Picker",
        //                selection: $selection
        //            ) {
        //                ForEach(18..<100) { number in
        //                    Text("\(number)")
        //                        .font(.headline)
        //                        .foregroundColor(.red)
        //                        .tag("\(number)")
        //
        //                }
        //            }
        //            .pickerStyle(.wheel)
        //        }
    }
}

#Preview {
    PickerBootCamp()
}
