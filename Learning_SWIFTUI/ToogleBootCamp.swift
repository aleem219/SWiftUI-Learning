//
//  ToogleBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 21/02/26.
//

import SwiftUI

struct ToogelBootcamp: View {
    @State var toggleIsOn:Bool = false
    var body: some View {
        VStack {
            
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            Toggle(
                isOn: $toggleIsOn) {
                    Text("Change Status")
                }
                .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToogelBootcamp()
}
