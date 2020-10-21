//
//  SendMessageButton.swift
//  RealCheck
//
//  Created by garlic on 2020/10/21.
//

import SwiftUI

struct SendMessageButton : View {
    
    var body: some View {
        
        Button(action: {
            print("모달로 메시지 창 띄워서 단체 문자 보내는거알아보자!")
        }) {
            Text("미출석 학생들에게 단체문자 전송하기")
                .fontWeight(.bold)
                .padding()
                .foregroundColor(.white)
                .padding(.horizontal, 30)
                .background(Color.init(CGColor(red: 0.225, green: 0.721, blue: 1, alpha: 1)))
                .cornerRadius(20.0)
                
        }
    }
}

struct SendMessageButton_Previews: PreviewProvider {
    static var previews: some View {
        SendMessageButton()
    }
}
