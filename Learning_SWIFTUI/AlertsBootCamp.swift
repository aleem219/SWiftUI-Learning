//
//  AlertsBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 21/02/26.
//

import SwiftUI

struct AlertsBootCamp: View {
    @State var showAlert:Bool = false
    @State var alertType: myAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor:Color = Color.yellow
    
    enum myAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor .ignoresSafeArea()
            
            VStack {
                Button("Buttton 1") {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded."
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "SUCCESSFULL UPLOADED  VIDEO"
//                    alertMessage = "Your video is now uploaded."
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        
        
        switch alertType {
        case .error:
            return Alert(title: Text("ERROR UPLOADING VIDEO"))
            
        case .success:
            return Alert(
                title: Text("SUCCESSFULL UPLOADED  VIDEO"),
                message: Text("Your video is now uploaded."),
                primaryButton: .destructive(Text("OK"), action: {
                    backgroundColor = .red
                }),
                secondaryButton: .cancel()
            )
            
        default:
            return Alert(title: Text("ERROR"))
        }
        
//        return Alert(
//            title: Text(alertTitle),
//            message:  Text(alertMessage),
//            dismissButton: .default(Text("OK"))
//        )
        
//        return Alert(
//            title: Text("This is Title"),
//            message: Text("Here we will describe the error."),
//            primaryButton: .destructive(Text("DELETE"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel()
//        )
//        //            Alert(title: Text("There was an error!"))
        
    }
    
}

#Preview {
    AlertsBootCamp()
}
