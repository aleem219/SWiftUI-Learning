//
//  IfLetGuardBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 25/02/26.
//

import SwiftUI

struct IfLetGuardBootCamp: View {
    @State var displayText:String? = nil
    @State var isLoading:Bool = false
    @State var currentUserId:String? = "textUser123"
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
           
        }
    }
    
    func loadData() {
        
        if let userId = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                displayText = "This is new data! user id is: \(userId)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no user id"
        }
    }
    func loadData2() {
        guard let userId = currentUserId else {
            displayText = "Error. There is no user id"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            displayText = "This is new data! user id is: \(userId)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootCamp()
}
