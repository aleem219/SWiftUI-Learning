//
//  EnviormentObjectBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 26/02/26.
//

import SwiftUI

class EnviormentViewModel: ObservableObject {
    @Published var datatArray:[String] = []
    init() {
        getData()
    }
    
    func getData() {
        self.datatArray.append(contentsOf:  ["iPhone","iPad","iMac","Apple Watch"])
    }
}


struct EnviormentObjectBootCamp: View {
    
    @StateObject var viewModel:EnviormentViewModel = EnviormentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.datatArray,id: \.self) { item in
                    NavigationLink(destination: DeatilView(selectedItem: item)) {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}


struct DeatilView: View {
    
    let selectedItem:String
    var body: some View {
        ZStack {
            
            //background
            Color.orange.ignoresSafeArea()
            
            //foreground
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(20)
            }
        }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel:EnviormentViewModel
    var body: some View {
        ZStack {
            
            //background
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)),Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            //foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.datatArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
            
            
        }
    }
}

#Preview {
    EnviormentObjectBootCamp()
    //    DeatilView(selectedItem: "Abdul")
    //    FinalView()
}
