//
//  SubbmitTextFieldBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 01/03/26.
//

import SwiftUI

struct SubbmitTextFieldBootCamp: View {
    
    @State var text:String = ""
    var body: some View {
        VStack(spacing: 30) {
            TextField("Placeholder...", text: $text)
                .submitLabel(.continue)
                .onSubmit {
                    print("Entered text value is:\($text)")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Entered text value is:\(text)")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("Entered text value is:\(text)")
                }
            
        }
    }
}

#Preview {
    SubbmitTextFieldBootCamp()
}
