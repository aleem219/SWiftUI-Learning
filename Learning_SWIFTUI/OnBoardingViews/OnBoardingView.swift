//
//  OnBoardingView.swift
//  Learning_SWIFTUI
//
//  Created by Abdul Aleem on 27/02/26.
//

import SwiftUI

struct OnBoardingView: View {
    
    // OnBoarding states:
    /*
     0 - Welcom Screen
     1 - Add Name
     2 - Add age
     3 - Add Gender
     */
    
    @State var onBoardingState:Int  = 0
    @State var name:String = ""
    @State var age:Double = 50
    @State var gender:String = ""
    
    var body: some View {
        ZStack {
            
            // Content Layer
            ZStack {
                switch onBoardingState{
                case 0:
                    welcomeSection
                case 1:
                    addNameSection
                case 2:
                    addAgeSection
                case 3:
                    addGenderSection
                default:
                    RoundedRectangle(cornerRadius:  25.0)
                        .foregroundColor(.green)
                }
            }
            
            // Button Lyer
            VStack {
                Spacer()
                bottomButtom
                
            }
            .padding(30)
            
        }
    }
    
    
}

#Preview {
    OnBoardingView()
        .background(Color.purple)
}

// MARK: COMPONENTS

extension OnBoardingView {
    private var bottomButtom: some View {
        Text("Sign in")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .onTapGesture {
                print("kug")
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .foregroundColor(.white)
                        .offset(y: 10),
                    alignment: .bottom
                )
            
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using Appstorage and SwiftUI techniques")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    

    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What' s your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            TextField("youe name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What' s your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
      
            Slider(value: $age,in: 18...100,step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What' s your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(selection: $gender,
                   label:
                    Text(gender.count > 1 ? gender : "Select a gender")
                .font(.largeTitle)
                .foregroundColor(.purple)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.white)
                .cornerRadius(10),
                   content:  {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")
            })
               
            Spacer()
            Spacer()
        }
        .pickerStyle(MenuPickerStyle())
        .padding(30)
    }
}
