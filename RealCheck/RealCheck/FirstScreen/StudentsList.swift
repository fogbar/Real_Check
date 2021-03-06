//
//  StudentsList.swift
//  RealCheck
//
//  Created by garlic on 2020/10/21.
//

import SwiftUI
import UIKit

//출석 현황까지 함께 있는 List!
//Section1에 들어가게 되겠지? 출석현황은
struct StudentsList : View {
    
    @State var isNavigationBarHidden:Bool = false
    
    init() {
        if #available(iOS 14.0, *) {
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        
        List() {
            //첫번째 Section
            Section(header: HStack {
                Spacer()
                
                Text("출석현황 : \(17)/\(23)") //-> 여기에 변수를 넣어서 전체 몇 명중 몇명이 출석했는지 체크하는 걸 넣어야할 듯
                    //어떻게 오른쪽에 위치시킬지 생각해보기
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    .padding()
                
            }
            .background(Color.white)
            .listRowInsets(EdgeInsets(
                            top: 0,
                            leading: 0,
                            bottom: 0,
                            trailing: 0))
            ) {
                ForEach(students, id: \.self) { student in
                    ZStack {
                        NavigationLink(destination: StudentDetailList(isNavigationBarHidden: self.$isNavigationBarHidden, student:student)) {
                                EmptyView()
                        }
                        StudentsListCell(student: student)
                            
                    }
                }
            }//Section
            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
            
        }//List
        .listStyle(GroupedListStyle())
        .listSeparatorStyle(style: .none)

    }
}

struct StudentsList_Previews: PreviewProvider {
    static var previews: some View {
        StudentsList()
    }
}
