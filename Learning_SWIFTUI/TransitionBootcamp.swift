//
//  TransitionBootcamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 19/02/26.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("BUTTON ") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.easeOut)
            }

        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
