//
//  ObservalBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 02/03/26.
//

import SwiftUI


@Observable class ObservalViewModel {
     var title:String = "some title"
  //   @ObservationIgnored var value:String = "some title"
}

struct  ObservalBootCamp: View {
    @State private var viewModel = ObservalViewModel()
    var body: some View {
        VStack(spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "New Title"
            }
            
            SomeChildView(viewModel: viewModel)
            
            SomeThiredView()
        }
        .environment(viewModel)
    }
}


struct SomeChildView : View {
    
    @Bindable var viewModel = ObservalViewModel()
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "uygftfghfvbjkhk"
        }
    }
}

struct SomeThiredView : View {
    
    @Environment(ObservalViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Third View"
        }
    }
}

#Preview {
    ObservalBootCamp()
}
