//
//  StudentDetailList.swift
//  RealCheck
//
//  Created by garlic on 2020/10/21.
//

import SwiftUI

struct StudentDetailList : View {
    
    var student:Student
    
    @Binding var isNavigationBarHidden : Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false), student:Student) {
        if #available(iOS 14.0, *) {
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        UITableView.appearance().separatorStyle = .none
        
        _isNavigationBarHidden = isNavigationBarHidden
        self.student = student
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            StudentInfoInDetailList(student: self.student)
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            
            
            List {
                Section(header:
                            GeometryReader { geometryReader in
                                HStack(alignment: .center, spacing: 0) {
                                    Text("날짜")
                                        .font(.system(size: 13))
                                        .fontWeight(.regular)
                                        .foregroundColor(.black)
                                        .frame(width: geometryReader.size.width / 4)
                                    Text("체온")
                                        .font(.system(size: 13))
                                        .fontWeight(.regular)
                                        .foregroundColor(.black)
                                        .frame(width: geometryReader.size.width / 4)
                                    Text("증상")
                                        .font(.system(size: 13))
                                        .fontWeight(.regular)
                                        .foregroundColor(.black)
                                        .frame(width: geometryReader.size.width / 4)
                                    Text("출석")
                                        .font(.system(size: 13))
                                        .fontWeight(.regular)
                                        .foregroundColor(.black)
                                        .frame(width: geometryReader.size.width / 4)
                                }
                                //                            .padding(.vertical, 10)
                                //                            .background(Color.white)
                                //                            .listRowInsets(EdgeInsets(
                                //                                            top: 0,
                                //                                            leading: 0,
                                //                                            bottom: 0,
                                //                                            trailing: 0))
                            }
                        
                ) {
                    ForEach(studentRecords, id:\.self) { studentRecord in
                        DetailListCell(studentRecord: studentRecord)
                    }
                }//Section
                .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
            }//List
            .listStyle(GroupedListStyle())
            .listSeparatorStyle(style: .none)
        }
        
        .navigationBarTitle("\(self.student.name) 학생 기록")
        //.navigationBarHidden(self.isNavigationBarHidden)
        .onAppear {
            self.isNavigationBarHidden = false
        }
    }
}

struct StudentDetailList_Previews: PreviewProvider {
    static var previews: some View {
        StudentDetailList(student: Student(name: "이승철", phoneNum: "01012345678", temperture: "36.1도", symptom: "무증상", check: false))
    }
}
