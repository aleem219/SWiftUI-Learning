//
//  IntroView.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 27/02/26.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSignedIn:Bool = false
    var body: some View {
        ZStack {
            
            //background
            RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height).ignoresSafeArea()
            //            currentUserSignedIn ?  Text("Profle View") :  Text("Onboarding View")
            
            if  currentUserSignedIn  {
                Text("Profle View")
            } else {
                Text("Onboarding View")
            }
        }
    }
}

#Preview {
    IntroView()
}
