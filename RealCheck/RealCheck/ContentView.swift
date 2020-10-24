//
//  ContentView.swift
//  RealCheck
//
//  Created by garlic on 2020/10/20.
//

import SwiftUI
import Foundation
import UIKit
import MessageUI

struct ContentView: View {
    
    let messageComposeDelegate = MessageComposerDelegate()
    
    @State var isNavigationBarHidden:Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .center) {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    //SendMessageButton()
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
                    
                    Spacer().frame(height: 20)
                    
                    //날짜 표시해주는 text
                    Text("\(dateFormatter.string(from: today))")
                        .fontWeight(.regular)
                        .font(.system(size: 19))
                        .padding(.leading, 15)
                    
                } //VStack -> sendMessageButton과 날짜 표시 text
                
                //이 자리에 PickerView 들어가면 되겠다.
                
                Spacer().frame(height: 20)
                
                StudentsList()
                
            }//VStack
            .padding(.top, 20)
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear {
                self.isNavigationBarHidden = true
            }
            
        }//NavigationView
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK: The message extension

extension ContentView {
    
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
        
        vc?.present(composeVC, animated: true)
    }
}
