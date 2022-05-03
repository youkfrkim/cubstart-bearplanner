//
//  MainView.swift
//  BearPlanner_Course
//
//  Created by Frances Kim on 5/2/22.
//

import SwiftUI

struct MainView: View {
    
    @State private var selection = 4
    @State var logout = false
    
    var body: some View {
        
        VStack {
                Rectangle()
                    .background(Color.cyan)
                    .foregroundColor(Color.cyan)
                    .frame(maxWidth: .infinity, maxHeight: 120)
                    .overlay(
                        VStack {
                            Spacer()
                                .frame(height: 15)
                            
                            HStack {
                                Spacer()
                                
                                Button("Log Out") {
                                    logout = true
                                }
                                    .foregroundColor(Color.red)
                                    .padding()
                                    .sheet(isPresented: $logout) {
                                        HomeView()
                                    }
                            }
                        
                            Spacer()
                                .frame(height: 10)
                        
                            Text("BearPlanner")
                                .foregroundColor(Color.white)
                                .font(.system(size: 40))
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                                .frame(height: 10)
                        }
                    )
        
            TabView(selection: $selection) {
                ScheduleView()
                    .tabItem {
                        Image("schedule")
                            .resizable()
                            .frame(width: 10, height: 10)
                            
                        Text("Schedule")
                }
                    .tag(1)
            
              SearchView()
                    .tabItem {
                    Image("search")
                        .resizable()
                        .frame(width: 10, height: 10)
                        
                    Text("Course Search")
                }
                .tag(2)
            
            FeedView()
                .tabItem {
                    Image("question")
                        .resizable()
                        .frame(width: 10, height: 10)
                        
                    Text("Q & A")
                }
                .tag(3)
              
              ProfileView()
                .tabItem {
                    Image("profile")
                        .resizable()
                        .frame(width: 10, height: 10)
                        
                    Text("Profile")
                }
                .tag(4)
            }
        }
    }
}
