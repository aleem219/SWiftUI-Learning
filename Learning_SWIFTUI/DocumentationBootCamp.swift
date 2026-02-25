//
//  MarkupBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 25/02/26.
//

import SwiftUI

struct DocumentationBootCamp: View {
    // MARK: - PROPERTIES
    @State var data:[String] = ["Apples","Oranges","Bananas"]
    @State var showAlert:Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.green.ignoresSafeArea()
                
                // foreground
                ForeGroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing: Button("Alert", action: { showAlert.toggle() }))
                .alert(isPresented: $showAlert) {
                    getALert(text: "This is the alert!")
                }
            }
        }  // END : NAV
    }
    
    /// This is a foreground layer whichb holds scrollView.
    private var ForeGroundLayer:some View {
        ScrollView { // START: SCROLL
            ForEach(data,id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLL
    }
    
    // MARK: - FUNCTION
    /// Gets an alert with a specific type
    ///
    /// ftgvhjgfhgcnbvmhjkgjfghcvhgyjftdhgcgvhjkgyfghcgvbhkgyfchvbvhkgfutdyhgvjcfdytfughvjjfygkhvcjfyghbmvjgkhjfjyghjkbvmgj
    /// ```
    /// getALert(text:"HI") -> Alret(title:Text:Text("HI"))
    /// ```
    ///
    ///  Waring: There is no addtional message in this alert
    /// - Parameter text:This is title for the text
    /// - Returns :Returns an alert with a title.
    func getALert (text: String) -> Alert {
        return Alert(title: Text(text ))
    }
}

// MARK: - PREVIEW
#Preview {
    DocumentationBootCamp()
}
