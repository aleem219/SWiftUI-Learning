//
//  TabViewBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 25/02/26.
//

import SwiftUI

struct TabViewBootCamp: View {
    @State var selectedTab:Int = 0
    
    let icon:[String] = [ "heart.fill","globe","house.fill","person.fill"]
    var body: some View {
        
        TabView {
            
            ForEach(icon,id: \.self) { icon in
              Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
            
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.green)
        }
        .background(
            RadialGradient(colors: [Color(#colorLiteral(red: 0.8509803922, green: 0.9098039216, blue: 0.8509803922, alpha: 1)),Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))], center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: .infinity)
        .tabViewStyle(PageTabViewStyle())
        
//        TabView(selection: $selectedTab,content:{
//            
//            HomeView(selectedTab: $selectedTab)
//                .tabItem({
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                })
//                .tag(0)
//            Text("BROUSE TAB")
//                .tabItem({
//                    Image(systemName: "globe")
//                    Text("Browse")
//                })
//                .tag(1)
//            
//            Text("PROFILE TAB")
//                .tabItem({
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                })
//                .tag(2)
//        })
//        .accentColor(.green)
    }
    
}

#Preview {
    TabViewBootCamp()
}

struct HomeView: View {
    
    @Binding var selectedTab:Int
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                Text("HOME TAB").font(.largeTitle).foregroundColor(.white)
                Button {
                    selectedTab = 2
                } label: {
                   Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
            

        }
        
    }
}
