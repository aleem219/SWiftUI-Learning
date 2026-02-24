//
//  SliderBootcamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 24/02/26.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue:Double = 3
    @State var color:Color = .red
    
    
    var body: some View {
        VStack {
            HStack {
                Text("Rating:")
                Text(
                    String(format: "%.0f", sliderValue)
//                    "\(sliderValue)"
                )
                .foregroundColor(color)
            }
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue,in: 1...5)
//            Slider(value: $sliderValue,in: 1...5,step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel: Text("1").font(.largeTitle).foregroundColor(.orange),
                maximumValueLabel: Text("5").font(.largeTitle).foregroundColor(.orange),
                label: {
                    Text("Title")
                })
                .accentColor(.red)
                .padding()
        }
    }
}

#Preview {
    SliderBootcamp()
}
