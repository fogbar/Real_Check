//
//  Utility.swift
//  RealCheck
//
//  Created by garlic on 2020/10/20.
//

import Foundation
import UIKit
import SwiftUI

//오늘 날짜 표시
let dateFormatter:DateFormatter = {
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "ko_KR")
    formatter.dateFormat = "YYYY년 M월 d일 EEEE"
    return formatter
}()

var today = Date()



//List의 Separator를 .none으로 주기위해 만듬
struct ListSeparatorStyle: ViewModifier {
    
    let style: UITableViewCell.SeparatorStyle
    
    func body(content: Content) -> some View {
        content
            .onAppear() {
                UITableView.appearance().separatorStyle = self.style
            }
    }
}
 
extension View {
    
    func listSeparatorStyle(style: UITableViewCell.SeparatorStyle) -> some View {
        ModifiedContent(content: self, modifier: ListSeparatorStyle(style: style))
    }
}
