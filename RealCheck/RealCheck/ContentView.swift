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
        Text("\(dateFormatter.string(from: today))")
            .fontWeight(.regular)
            .font(.system(size: 19))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
