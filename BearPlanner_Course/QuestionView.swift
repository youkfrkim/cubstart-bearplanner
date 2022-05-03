//
//  QuestionView.swift
//  BearPlanner_Course
//
//  Created by Frances Kim on 5/2/22.
//

import Foundation
import SwiftUI

struct QuestionView: View {

    @State private var caption = ""
    @State private var title = ""
    @State private var num = 3
    @Environment(\.presentationMode) var presentationMode

    func addItem(){
        num += 1
        QuestionList.qs.append(Questions(num: num, name: title, detail: caption))
    }

    var body: some View{

        VStack{
            HStack{
            Spacer()

            Button{
                addItem()
            } label: {
                Text("Post").bold().padding(.horizontal).padding(.vertical, 8).background(Color(.systemGreen)).foregroundColor(.white).clipShape(Capsule())
            }
        }
        .padding()

        TextField("[Title]", text: $caption ).padding().frame(width: 300, height: 50).background(Color.gray.opacity(0.15)).cornerRadius(10)

        TextField("[Question]", text: $title ).padding().frame(width: 300, height: 200).background(Color.gray.opacity(0.15)).cornerRadius(10)

        Spacer()

        }}
}
