//
//  SearchView.swift
//  BearPlanner_Course
//
//  Created by Frances Kim on 5/2/22.
//

import SwiftUI

struct SearchView: View {
    
    let courseList = ["EECS 127", "CS 189", "EE 120", "MATH 113", "CS 162", "EECS 151"]
    
    @State var searchInput = ""
    @State private var fall2022 = ["CHINESE 1A", "CS 198", "CHEM 3A"]
    
    var filteredCourses: [String] {
        if searchInput.isEmpty {
            return courseList
        } else {
            return courseList.filter { $0.localizedCaseInsensitiveContains(searchInput)}
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Browse Classes")) {
                        ForEach(0 ..< filteredCourses.count, id: \.self) {
                                    Text(self.filteredCourses[$0])
                            }
                }
                    
                Section(header: Text("Remaining Required Courses")) {
                    NavigationLink(destination: CourseDetailView(fall2022: $fall2022)) {
                            Text("Sample Class (Click Me!)")
                        }
                    .navigationBarBackButtonHidden(true)
                    }
            }.listStyle(.plain)
                .navigationTitle("Course Selction")
            }.searchable(text: $searchInput, placement: .navigationBarDrawer(displayMode: .always))
            .disableAutocorrection(true)
    }
}
