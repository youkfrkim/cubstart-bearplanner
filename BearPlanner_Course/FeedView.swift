//
//  FeedView.swift
//  BearPlanner_Course
//
//  Created by Frances Kim on 5/2/22.
//

import Foundation
import SwiftUI

struct FeedView: View {

    @State private var show = false
    var list: [Questions] = QuestionList.qs
    @State var numberList = 2
    
    func showScreen(){
        show = true
    }

    var body: some View{
        
        NavigationView{

            VStack{
            List(list){ item in
                NavigationLink( destination: QuestionDetailView(question: item), label: {
                Text(String(item.num)).fontWeight(.bold)
            VStack(alignment: .leading, spacing: 5){
                Text(item.name).fontWeight(.semibold).lineLimit(2).minimumScaleFactor(0.5)
            }
            })
            }.listStyle(.plain)
                
                Button("Post My Question"){
                    showScreen()
                }

                NavigationLink(destination: QuestionView(), isActive: $show) { EmptyView() }
            .navigationTitle("Questions")
            .navigationBarBackButtonHidden(true)
                
                Spacer()
                    .frame(height: 20)
        }
    }
    }}
