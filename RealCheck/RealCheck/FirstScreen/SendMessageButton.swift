//
//  SendMessageButton.swift
//  RealCheck
//
//  Created by garlic on 2020/10/21.
//

import SwiftUI
import MessageUI


struct SendMessageButton : View {
    
    let messageComposeDelegate = MessageComposerDelegate()
    
    var body: some View {
        
        Button(action: {
            print("모달로 메시지 창 띄워서 단체 문자 보내는거알아보자!")
            self.presentMessageCompose()
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

// MARK: The message extension

extension SendMessageButton {
    
     class MessageComposerDelegate: NSObject, MFMessageComposeViewControllerDelegate {
        func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
            // Customize here

            controller.dismiss(animated: true)
        }
    }
    /// Present an message compose view controller modally in UIKit environment
     func presentMessageCompose() {
        guard MFMessageComposeViewController.canSendText() else {
            return
        }
        let vc = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.rootViewController
        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = messageComposeDelegate
        
        //출석체크가 false인 친구들의 전화번호
        var messageStudentPhoneNum:[String] = []
        
        students.forEach { (student) in
            messageStudentPhoneNum.append(student.phoneNum)
        }
        composeVC.recipients = messageStudentPhoneNum
        composeVC.body = "애들아 안녕 심재준 선생님이야 출석체크 안한 친구들 어서 이 링크로 들어와서 출석체크 하길 바래!!"
        
        
        vc?.present(composeVC, animated: true)
    }
}


