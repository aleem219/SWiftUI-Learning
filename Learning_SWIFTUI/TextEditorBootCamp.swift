//
//  TextEditorBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 21/02/26.
//

import SwiftUI

struct TextEditorBootCamp: View {
    @State var textEditorText:String = "This is starting Text."
    @State var savedText:String = ""
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(Color(#colorLiteral(red: 0.8784196973, green: 0.925378263, blue: 0.8796713948, alpha: 1)))
                    .cornerRadius(10)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                Text(savedText)
                Spacer()

            }
            .padding()
//            .background(.gray)
            .navigationTitle("TextEditorBootCamp")
        }
    }
}

#Preview {
    TextEditorBootCamp()
}
