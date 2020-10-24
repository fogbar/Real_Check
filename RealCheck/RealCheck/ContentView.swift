//
//  ContentView.swift
//  RealCheck
//
//  Created by garlic on 2020/10/20.
//

import SwiftUI
import Foundation
import UIKit


struct ContentView: View {
    
    
    
    @State var isNavigationBarHidden:Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .center) {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    SendMessageButton()

                    
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

