//
//  NativePopOverBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 01/03/26.
//

import SwiftUI

struct NativePopOverBootCamp: View {
    @State private var  showPopOver:Bool = false
    
    @State var feedbackOption:[String] = ["Apple","Orange","Banane","Peach"]
    
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                Button("CLICK ME") {
                    showPopOver.toggle()
                }
                .popover(isPresented: $showPopOver,attachmentAnchor: .point(.top), content: {
                    VStack(alignment: .leading,spacing: 12, content: {
                        ForEach(feedbackOption,id: \.self) { option in
                            Text(option)
                               .font(.caption)
                               .padding()
                               .padding(.vertical,10)
                               .padding(.horizontal,10)
                        }
                    })
    //                    .presentationCompactAdaptation(.sheet)
    //                    .presentationCompactAdaptation(.fullScreenCover)
                       .presentationCompactAdaptation(.popover)
                })
Spacer()
            }
            
            
//            Button("CLICK ME") {
//                showPopOver.toggle()
//            }
//            .popover(isPresented: $showPopOver,attachmentAnchor: .point(.center), content: {
//                Text("Hello Subscribers!")
//                   .font(.caption)
//                   .padding()
//                   .padding(.vertical,10)
//                   .padding(.horizontal,10)
////                    .presentationCompactAdaptation(.sheet)
////                    .presentationCompactAdaptation(.fullScreenCover)
//                   .presentationCompactAdaptation(.popover)
//            })
//            .popover(isPresented: $showPopOver) {
//                 Text("Hello Subscribers!")
//                    .font(.caption)
//                    .padding()
//                    .padding(.vertical,10)
//                    .padding(.horizontal,10)
////                    .presentationCompactAdaptation(.sheet)
////                    .presentationCompactAdaptation(.fullScreenCover)
//                    .presentationCompactAdaptation(.popover)
//            }
        }
//        .popover(isPresented: $showPopOver) {
//             Text("Hello Subscribers!")
////                    .presentationCompactAdaptation(.sheet)
////                    .presentationCompactAdaptation(.fullScreenCover)
//                .presentationCompactAdaptation(.popover)
//        }

    }
}

#Preview {
    NativePopOverBootCamp()
}
