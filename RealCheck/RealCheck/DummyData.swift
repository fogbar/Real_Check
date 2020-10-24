//
//  DummyData.swift
//  RealCheck
//
//  Created by garlic on 2020/10/21.
//

import Foundation
import SwiftUI

//메인 화면에 뿌려질 데이터
struct Student : Hashable {
    let name: String
    let phoneNum: String
    
    var temperture: String
    var symptom: String
    var check: Bool
}

let students : [Student] = [Student(name: "이승환", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true), Student(name: "이미희", phoneNum: "01023456789", temperture: "36.8", symptom: "없음", check: false), Student(name: "김희동", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true), Student(name: "황재열", phoneNum: "01034567890", temperture: "36.8", symptom: "없음", check: false), Student(name: "김미진", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true), Student(name: "이희연", phoneNum: "01056789012", temperture: "36.8", symptom: "없음", check: false), Student(name: "김순자", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true), Student(name: "최옥균", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true), Student(name: "김 훈", phoneNum: "01089012345", temperture: "36.8", symptom: "없음", check: false), Student(name: "김희영", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true), Student(name: "최희정", phoneNum: "01012345678", temperture: "36.8", symptom: "없음", check: true)]

//detailList에 뿌려질 데이터

struct StudentRecord: Hashable {
    let date: String
    let phoneNum: String
    
    var temperture: String
    var symptom: String
    var check: Bool
}

let studentRecords : [StudentRecord] = [
    StudentRecord(date: "201001", phoneNum: "01012345678", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201002", phoneNum: "01023456789", temperture: "36.1도", symptom: "없음", check: false),
    StudentRecord(date: "201003", phoneNum: "01034567890", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201004", phoneNum: "01045678901", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201005", phoneNum: "01056789012", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201006", phoneNum: "01067890123", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201007", phoneNum: "01078901234", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201008", phoneNum: "01089012345", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201009", phoneNum: "01090123456", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201010", phoneNum: "01001234567", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201011", phoneNum: "01009876544", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201012", phoneNum: "01034534244", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201013", phoneNum: "01012341256", temperture: "36.1도", symptom: "없음", check: false),
    StudentRecord(date: "2010014", phoneNum: "01075647656", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201015", phoneNum: "01094724343", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201016", phoneNum: "01049483874", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201017", phoneNum: "01094847394", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201018", phoneNum: "01012342342", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201019", phoneNum: "01067456345", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201020", phoneNum: "01056545678", temperture: "36.1도", symptom: "없음", check: true),
    StudentRecord(date: "201001", phoneNum: "01045645645", temperture: "36.1도", symptom: "없음", check: true)
]
