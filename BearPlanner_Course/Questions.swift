//
//  Questions.swift
//  BearPlanner_Course
//
//  Created by Frances Kim on 5/2/22.
//

import Foundation
import SwiftUI

class Questions: Identifiable {

    var num: Int
    var name: String
    var detail: String

    init(num: Int, name: String, detail: String){
        self.num = num
        self.name = name
        self.detail = detail
    }
}

struct QuestionList {

    static var qs = [
        Questions(num: 1, name: "Class Recommendation", detail: "Hi, I am a freshman intending to major in CS. Can anyone recommend any easy breadth course? "),
        Questions(num: 2, name: "Schedule", detail: "Hii, I am a sophomore intending for MCB. Can anyone look at my schedule?"),
        Questions(num: 3, name: "CS61A second phase?", detail: "Hii, I couldn't sign up for CS61A in my first phase. Can I still get in the course during the second phase?")
    ]
}
