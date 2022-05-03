//
//  ProfileView.swift
//  BearPlanner_Course
//
//  Created by Frances Kim on 5/2/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var name = ""
    @State private var major = ""
    @State private var grad = Date()
    @State private var currentUnits = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    Section(header: Text("Personal Information")){

                        TextField("Name", text: $name)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.gray.opacity(0.15))
                            .cornerRadius(10)

                        TextField("Major", text: $major)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.gray.opacity(0.15))
                            .cornerRadius(10)

                        DatePicker("Expected Graduation", selection: $grad, displayedComponents: .date)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.gray.opacity(0.15))
                            .cornerRadius(10)

                        TextField("Current Units", text: $currentUnits)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.gray.opacity(0.15))
                            .cornerRadius(10)

                        Button("Check My Progress"){

                        }
                        .foregroundColor(.white)
                        .frame(width: 200, height: 40)
                        .background(Color.green)
                        .cornerRadius(20)
                        .padding(20)

                        Spacer()
                    }
                }
            }
            .navigationTitle("Profile")
        }
    }
}
