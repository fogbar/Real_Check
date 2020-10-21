//
//  ContentView.swift
//  RealCheck
//
//  Created by garlic on 2020/10/20.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            SendMessageButton()
            
            Spacer().frame(height: 20)
            
            //날짜 표시해주는 text
            Text("\(dateFormatter.string(from: today))")
                .fontWeight(.regular)
                .font(.system(size: 19))
                .padding(.leading, 15)
        } //VStack
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
