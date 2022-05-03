//
//  QuestionDetailView.swift
//  BearPlanner_Course
//
//  Created by Frances Kim on 5/2/22.
//

import Foundation
import SwiftUI

struct QuestionDetailView: View {

    var question: Questions
    
    var body: some View{

        VStack(spacing: 20){
            Text(question.name).font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Text(question.detail)
                .font(.body)
                .padding()
            
            Spacer()
        }
    }
}
