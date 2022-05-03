//
//  LogInView.swift
//  BearPlanner_Course
//
//  Created by Frances Kim on 5/2/22.
//

import SwiftUI

struct LogInView: View {

    @State private var username = ""
    @State private var password = ""
    @State private var WrongUsername = 0
    @State private var WrongPassword = 0
    @State private var  showingLoginScreen = false
    @State private var signup = false
    @State private var mainview = false
    
    var body: some View {

        NavigationView{
        ZStack(){
            Color.cyan.ignoresSafeArea()
            Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
            Circle().scale(1.7).foregroundColor(.white)
            
            VStack {
                Text("Login").font(.largeTitle).bold().padding()

                TextField("Username", text: $username).padding().frame(width: 300, height: 50).background(Color.gray.opacity(0.15)).cornerRadius(10).autocapitalization(.none)

                TextField("Password", text: $password).padding().frame(width: 300, height: 50).background(Color.gray.opacity(0.15)).cornerRadius(10)

                Button("Login"){
                    authUser(username: username, password: password)
                }
                .foregroundColor(.white)
                .frame(width: 200, height: 40).background(Color.green).cornerRadius(10).padding(20)
                .sheet(isPresented: $mainview) {
                    MainView()
                }
                
                Text("Don't have an account?")

                Text("Sign Up.")
                
                Spacer()
                    .frame(height: 20)
                
                Button("Create Account"){
                    signup = true
                }
                .foregroundColor(Color.blue)
                .sheet(isPresented: $signup) {
                    SignUpView()
                }
            }
        }
    }
}

    func authUser(username: String, password: String){

        if username.lowercased() == "bear" {
            if password == "123"{
                mainview = true
            }
        }
    }
}
