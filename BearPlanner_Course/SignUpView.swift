//
//  SignUpView.swift
//  BearPlanner_Course
//
//  Created by Frances Kim on 5/2/22.
//

import SwiftUI

struct SignUpView: View {

    @State private var username = ""
    @State private var password = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {

        NavigationView{
            ZStack(){
                Color.cyan.ignoresSafeArea()
                Rectangle().scale(1.7).foregroundColor(.white.opacity(0.15))
                Circle().scale(1.35).foregroundColor(.white)

                VStack {
                    Text("SignUp").font(.largeTitle).bold().padding()

                    TextField("Username", text: $username ).padding().frame(width: 300, height: 50).background(Color.gray.opacity(0.15)).cornerRadius(10)

                    TextField("Password", text: $password).padding().frame(width: 300, height: 50).background(Color.gray.opacity(0.15)).cornerRadius(10)

                    Button("Sign Up"){
                    }
                    .foregroundColor(.white)
                    .frame(width: 200, height: 40).background(Color.green).cornerRadius(10).padding(20)
                
                    Button("Go Back") {
                        dismiss()
                    }
                    .padding()
                }
            }
        }
    }
}
