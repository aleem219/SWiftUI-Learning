//
//  ButtonStyleBoootcamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 28/02/26.
//

import SwiftUI

struct ButtonStyleBoootcamp: View {
    var body: some View {
        VStack {
            
            Button {
                print("")
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 30))
            .buttonStyle(.borderedProminent)

            
            
            Button("Button Title") {
                print("")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.plain)
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                print("")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
//            .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                print("")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                print("")
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.borderless)
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ButtonStyleBoootcamp()
}
