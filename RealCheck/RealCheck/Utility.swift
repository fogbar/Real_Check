//
//  Utility.swift
//  RealCheck
//
//  Created by garlic on 2020/10/20.
//

import Foundation

//오늘 날짜 표시
let dateFormatter:DateFormatter = {
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "ko_KR")
    formatter.dateFormat = "YYYY년 M월 d일 EEEE"
    return formatter
}()

var today = Date()
