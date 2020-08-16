//
//  ContentView.swift
//  ios-quick-starter-kit
//
//  Created by creco on 2020/08/13.
//  Copyright © 2020 creaticoding. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    
    var body: some View {
        Group{
           MainWebView(url: "https://www.naver.com")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
