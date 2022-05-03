//
//  ScheduleView.swift
//  BearPlanner_Course
//
//  Created by Frances Kim on 5/2/22.
//

import SwiftUI

struct CourseDetailView: View {
    
    @Binding var fall2022: [String]
    
    let courseDetails = ["Course Name: Sample Class", "Instructor:", "Lecture Time:", "Satisfies:", "Class ID:", "Units:", "Finals Date:", "Additional Notes:"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Course Details")
                    .font(.system(size: 30, weight: .bold))
                    .padding()
                
                Spacer()
            }
            
            List {
                    ForEach(0..<courseDetails.count, id: \.self) { index in
                        Text(String(courseDetails[index]))
                    }
                }
                .listStyle(.plain)
            
            Spacer()
                    
            Button("Add to Schedule") {
                fall2022.insert("Sample Class", at: 0)
            }
                .padding()
                .background(Color.red)
                .foregroundColor(Color.white)
                .cornerRadius(5)
            
            Spacer()
                .frame(height: 20)
        }
    }
}

struct ScheduleView: View {
    
    let spring2022 = ["BIO 1A", "MCB 102", "EGYPTIAN 10A", "MATH 1B"]
    
    @State private var fall2022 = ["CHINESE 1A", "CS 198", "CHEM 3A"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                        Text("Fall 2022")) {
                    ForEach(0 ..< fall2022.count, id: \.self) {
                        Text(self.fall2022[$0])
                    }
                }
                
                Section(header:
                        Text("Spring 2022")) {
                    ForEach(0 ..< spring2022.count, id: \.self) {
                        Text(self.spring2022[$0])
                    }
                }
            }.listStyle(.plain)
                .navigationBarTitle("Schedule")
                .navigationBarBackButtonHidden(true)
        }
    }
}
