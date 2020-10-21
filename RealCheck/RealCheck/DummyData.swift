//
//  DummyData.swift
//  RealCheck
//
//  Created by garlic on 2020/10/21.
//

import Foundation
import SwiftUI

struct Student : Hashable {
    let name: String
    let phoneNum: String
    
    var temperture: String
    var symptom: String
    var check: Bool
}

let students : [Student] = [Student(name: "이승환", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true), Student(name: "이승환", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: false), Student(name: "이승환", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true), Student(name: "이승환", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: false), Student(name: "이승환", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true), Student(name: "이승환", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: false), Student(name: "이승환", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true), Student(name: "이승환", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true), Student(name: "이승환", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: false), Student(name: "이승환", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true), Student(name: "이승환", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true)]
