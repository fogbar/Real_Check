//
//  StudentDetailList.swift
//  RealCheck
//
//  Created by garlic on 2020/10/21.
//

import SwiftUI

struct StudentDetailList : View {
    
    var studentName:String = ""
    
    @Binding var isNavigationBarHidden : Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false), studentName:String) {
        if #available(iOS 14.0, *) {
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        UITableView.appearance().separatorStyle = .none
        
        _isNavigationBarHidden = isNavigationBarHidden
        self.studentName = studentName
    }
    
    var body: some View {
        
        Text("세부 학생 정보 들어가야함")
            
            .navigationBarTitle("\(self.studentName) 학생 기록")
            //.navigationBarHidden(self.isNavigationBarHidden)
            .onAppear {
                self.isNavigationBarHidden = false
            }
    }
}

struct StudentDetailList_Previews: PreviewProvider {
    static var previews: some View {
        StudentDetailList(studentName: "")
    }
}
