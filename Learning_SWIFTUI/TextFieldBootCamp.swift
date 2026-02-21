//
//  TextFieldBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 21/02/26.
//

import SwiftUI

struct TextFieldBootCamp: View {
    
    @State var textFieldText:String = ""
    @State var dataArray:[String] = []
    @State private var showAlert: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                TextFieldText
                SaveBUtton
                    .alert(isPresented: $showAlert) {
                        getAlert()
                    }
                ForEach(dataArray,id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextFieldBootCamp")
        }
    }
    
    private var TextFieldText:some View {
        TextField("Type Something herre", text: $textFieldText)
            .padding()
            .background(Color.gray.opacity(0.3).cornerRadius(20))
            .foregroundColor(.red)
            .font(.headline)
    }
    
    private var SaveBUtton:some View {
        Button {
            if textIspproriate() {
                saveText()
            } else {
                showAlert = true
            }
        } label: {
            Text("Save".uppercased())
                .padding()
                .frame(maxWidth: .infinity)
                .background(textIspproriate() ? Color.blue : Color.gray)
                .cornerRadius(20)
                .foregroundColor(.white)
                .font(.headline)
        }
        .disabled(!textIspproriate())
    }
    
    func textIspproriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    func getAlert() -> Alert {
        return Alert(
            title: Text("Please enter a valid Text"),
            message: Text("Count shold not less than 3"),
            primaryButton: .destructive(Text("OK")),
            secondaryButton: .cancel()
        )
    }
    
}

#Preview {
    TextFieldBootCamp()
}
