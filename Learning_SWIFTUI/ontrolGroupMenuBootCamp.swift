//
//  ontrolGroupMenuBootCamp.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 01/03/26.
//

import SwiftUI

struct ontrolGroupMenuBootCamp: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup {
//            ControlGroup("one") {
                Button("Uno") {
                    print("")
                }
                Button("Dos") {
                    print("")
                }
//                Button("Tres") {
//                    print("")
//                }
                
                Menu("How Are Your") {
                    Button("Good") {
                        print("")
                    }
                    
                    Button("Bad") {
                        print("")
                    }
                }
            }
            Button("Two") {
                print("")
            }
            Menu("Three") {
                Button("Hi") {
                    print("")
                }
                
                Button("Hello") {
                    print("")
                }

            }
        }
    }
}

#Preview {
    ontrolGroupMenuBootCamp()
}
