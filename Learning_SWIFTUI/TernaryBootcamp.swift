//
//  TernaryBootcamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 19/02/26.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState:Bool = false
    var body: some View {
        VStack {
            Button("Buuton:\(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STARTING STATE!!!!" : "ENDING STATE!!!!")
         
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                    .frame(
                        width: isStartingState ? 200 : 50,
                        height: isStartingState ? 400 : 50
                    )
 
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
