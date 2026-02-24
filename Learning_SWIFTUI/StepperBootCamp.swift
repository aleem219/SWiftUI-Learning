//
//  StepperBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 24/02/26.
//

import SwiftUI

struct StepperBootCamp: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement,height: 100)
            Stepper("Stepper 2: \(stepperValue)") {
                incrementWidtgh(amount: 10)
            } onDecrement: {
                incrementWidtgh(amount: -10)
            }
            
        }
    }
    
    func incrementWidtgh(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootCamp()
}
