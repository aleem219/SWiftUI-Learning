//
//  ActionSheetBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 21/02/26.
//

import SwiftUI

struct ActionSheetBootCamp: View {
    @State var showActionSheet:Bool = false
    @State var actionSheetOption:ActionSheetOption = .isOtherPost
    enum ActionSheetOption {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        //        Button("Click Me !!!") {
        //            showActionSheet.toggle()
        //        }
        VStack {
            HStack {
                Circle()
                    .frame(width: 30,height: 30)
                Text("@Username")
                Spacer()
                Button {
//                    actionSheetOption = .isOtherPost
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }
            .padding()
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
        }
        .actionSheet(isPresented: $showActionSheet,content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        
        let sharedButton: ActionSheet.Button = .default(Text("shared")) {
            print("")
        }
        
        let reportButton:ActionSheet.Button = .destructive(Text("Report")) {
            print("")
        }
        
        let deleteButton:ActionSheet.Button = .destructive(Text("Delete")) {
            print("")
        }
        
        let cancelButton:ActionSheet.Button = .cancel()
        let title = Text("What would you like to do")
        
        
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [sharedButton,reportButton,deleteButton,cancelButton]
            )
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [sharedButton,reportButton,cancelButton]
            )
        }
        
        //        return ActionSheet(title: Text("This is title"))
        
        //        let button1:ActionSheet.Button = .default(Text("DEFAULT"))
        //        let button2:ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
        //        let button3:ActionSheet.Button = .cancel()
        //        
        //        return ActionSheet(
        //            title: Text("This is title"),
        //            message: Text("This is message"),
        //            buttons: [button1,button2,button3]
        //        )
    }
}

#Preview {
    ActionSheetBootCamp()
}
