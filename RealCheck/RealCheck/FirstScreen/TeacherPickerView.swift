//
//  PickerView.swift
//  RealCheck
//
//  Created by garlic on 2020/10/24.
//

import SwiftUI



struct TeacherPickerView : View {
    
    private let periods = ["1교시", "2교시", "3교시", "4교시", "5교시", "6교시", "7교시", "8교시"]
    
    private let subjects = ["국어", "영어", "수학", "사회", "과학", "기가", "정보", "체육"]
    
    private let grades = ["1학년", "2학년", "3학년"]
    
    private let rooms = ["1반", "2반", "3반", "4반", "5반", "6반", "7반", "8반", "9반", "10반"]
    
    //교시
    @State private var selectionPeriodValue : Int = 0
    //과목
    @State private var selectionSubjectValue : Int = 0
    //학년
    @State private var selectionGradeValue : Int = 0
    //반
    @State private var selectionRoomValue : Int = 0
    
    var body: some View {
        HStack(spacing: 0) {
            
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    Spacer()
                    Picker("교시", selection: self.$selectionPeriodValue) {
                        ForEach(self.periods, id: \.self) {
                            Text(String($0)).tag($0)
                        }
                    }
                    .labelsHidden()
                    .fixedSize(horizontal: true, vertical: true)
                    .frame(width: geometry.size.width / 4, height: 100)
                    .clipped()
                    
                    Picker("과목", selection: self.$selectionSubjectValue) {
                        ForEach(self.subjects, id: \.self) {
                            Text(String($0)).tag($0)
                        }
                    }
                    .labelsHidden()
                    .fixedSize(horizontal: true, vertical: true)
                    .frame(width: geometry.size.width / 4, height: 100)
                    .clipped()
                    
                    Picker("학년", selection: self.$selectionGradeValue) {
                        ForEach(self.grades, id: \.self) {
                            Text(String($0)).tag($0)
                        }
                    }
                    .labelsHidden()
                    .fixedSize(horizontal: true, vertical: true)
                    .frame(width: geometry.size.width / 4, height: 100)
                    .clipped()
                    
                    Picker("반", selection: self.$selectionRoomValue) {
                        ForEach(self.rooms, id: \.self) {
                            Text(String($0)).tag($0)
                        }
                    }
                    .labelsHidden()
                    .fixedSize(horizontal: true, vertical: true)
                    .frame(width: geometry.size.width / 4, height: 100)
                    .clipped()
                    
                    Spacer()
                }
            }
            .frame(height: 100)
            .mask(Rectangle())
            .background(Color.init(CGColor(red: 0.342, green: 0.342, blue: 0.342, alpha: 1)))
            
        }
        
    }
}

struct TeacherPickerView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherPickerView()
    }
}
