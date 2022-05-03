//
//  ContentView.swift
//  BearPlanner_Course
//
//  Created by Frances Kim on 4/24/22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var login = false
    @State private var signup = false
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("BearPlanner")
                .foregroundColor(Color.white)
                .font(.system(size: 60))
                .multilineTextAlignment(.center)
                .padding(30)
            
            Image("bp")
                .resizable()
                .frame(width: 250, height: 250)
                .scaledToFit()
                .padding(20)
                
            Button("Login") {
                login = true
            }
                .foregroundColor(.white)
                .frame(width: 200, height: 40)
                .background(Color.yellow)
                .cornerRadius(10)
                .padding(20)
                .sheet(isPresented: $login) {
                    LogInView()
                }

            Button("Create Account") {
                signup = true
            }
                .foregroundColor(.white)
                .frame(width: 200, height: 40)
                .background(Color.yellow)
                .cornerRadius(10)
                .padding(20)
                .sheet(isPresented: $signup) {
                    SignUpView()
                }
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.cyan)
    }
}
