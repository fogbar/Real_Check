//
//  StudentsListCell.swift
//  RealCheck
//
//  Created by garlic on 2020/10/21.
//

import SwiftUI

//StudentsList에 뿌려질 각각의 Cell
struct StudentsListCell : View {
    
    //뿌려질 student의 정보 property
    let name: String
    let phoneNum: String
    
    //@State
    var temperture: String
    var symptom: String
    var check: Bool = false
    
    init(student:Student) {
        self.name = student.name
        self.phoneNum = student.phoneNum
        self.temperture = student.temperture
        self.symptom = student.symptom
        self.check = student.check
    }
    
    
    var body: some View {
        
        HStack() {
            Spacer()
            Text(name)
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

struct StudentsListCell_Previews: PreviewProvider {
    static var previews: some View {
        StudentsListCell(student: Student(name: "김동준", phoneNum: "01012345678", temperture: "36.5", symptom: "없음", check: true))
    }
}
