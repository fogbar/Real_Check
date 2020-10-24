//
//  DetailListCell.swift
//  RealCheck
//
//  Created by garlic on 2020/10/24.
//

import SwiftUI

struct DetailListCell:View {
    
    //뿌려질 student의 정보 property
    let date: String
    let phoneNum: String
    
    //@State
    var temperture: String
    var symptom: String
    var check: Bool = false
    
    init(studentRecord:StudentRecord) {
        self.date = studentRecord.date
        self.phoneNum = studentRecord.phoneNum
        self.temperture = studentRecord.temperture
        self.symptom = studentRecord.symptom
        self.check = studentRecord.check
    }
    
    
    var body: some View {
        
        HStack() {
            Spacer()
            Text(date)
                .fontWeight(.regular)
                .font(.system(size: 15))
            Spacer()
            Text(temperture)
                .fontWeight(.regular)
                .font(.system(size: 15))
                .foregroundColor(Color.init(CGColor(red: 0.488, green: 0.488, blue: 0.488, alpha: 1)))
            Spacer()
            Text(symptom)
                .fontWeight(.regular)
                .font(.system(size: 15))
                .foregroundColor(Color.init(CGColor(red: 0.488, green: 0.488, blue: 0.488, alpha: 1)))
            Spacer()
            Image(systemName: check ? "circle" : "xmark") //circle의 색깔과 xmark의 색깔을 다르게 가져가야하는데..
                .font(.system(size: 22))
                .foregroundColor(check ? Color.init(CGColor(red: 0.062, green: 0.779, blue: 0, alpha: 1)) : Color.init(CGColor(red: 0, green: 0.393, blue: 0.854, alpha: 1)))
            Spacer()
        } //HStack
        .padding()
        .background(Color.init(CGColor(red: 0.917, green: 0.917, blue: 0.917, alpha: 1)))
        .cornerRadius(20.0)
    }
}

struct DetailListCell_Previews: PreviewProvider {
    static var previews: some View {
        DetailListCell(studentRecord: StudentRecord(date: "201001", phoneNum: "01012345678", temperture: "36.3도", symptom: "무증상", check: false))
    }
}
