 //
//  AsyncImageBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 28/02/26.
//

import SwiftUI

struct AsyncImageBootCamp: View {
    
    let url = URL(string: "https://picsum.photos/400" )
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100,height: 100 )
                    .cornerRadius(10)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100,height: 100 )
//                .cornerRadius(10)
//        }, placeholder: {
//           ProgressView()
//        })
    }
}

#Preview {
    AsyncImageBootCamp()
}
