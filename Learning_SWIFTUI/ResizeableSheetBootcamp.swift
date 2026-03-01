//
//  ResizeableSheetBootcamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 01/03/26.
//

import SwiftUI

struct ResizeableSheetBootcamp: View {
    @State private var showSheet:Bool = false
    @State private var detents:PresentationDetent = .large
    var body: some View {
        Button("Clck Me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MynextView(detents: $detents)
//                .presentationDetents([.large])
//                .presentationDetents([.medium])
//                .presentationDetents([.medium, .large])
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
            
//                .presentationDetents([.fraction(0.1),.height(200), .large, .medium])
//                .presentationDetents([.height(200)])
//                .presentationDetents([.large ,.medium], selection: $detents)
//                .presentationDragIndicator(.hidden)
            
        }
//        .onAppear {
//            showSheet = true
//        }
    }
}


struct MynextView: View {
    @Binding var detents:PresentationDetent
    var body: some View {
        ZStack {
            Color.gray.opacity(0.7).ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                
                Button("20%") {
                    detents = .fraction(0.2)
                }
                
                Button("Medium") {
                    detents = .medium
                }
                
                Button("600 PX") {
                    detents = .height(600)
                }
                
                Button("Large") {
                    detents = .large
                }
            }
        }
        .presentationDetents([.fraction(0.2), .large ,.medium,.height(600)], selection: $detents)
        .presentationDragIndicator(.hidden)
    }
}

#Preview {
    ResizeableSheetBootcamp()
}
