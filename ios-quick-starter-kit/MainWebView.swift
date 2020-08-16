//
//  MainWebView.swift
//  ios-quick-starter-kit
//
//  Created by creco on 2020/08/15.
//  Copyright © 2020 creaticoding. All rights reserved.
//

import SwiftUI
import WebKit


struct MainWebView: UIViewRepresentable {
    
    
    var url: String?
    
    func makeUIView(context: Context) -> WKWebView {
        
        if self.url == nil {
            return WKWebView()
        }
        
        if URL(string: self.url!) == nil {
            return WKWebView()
        }
        
        let webview = WKWebView()
        
        webview.load(URLRequest(url: URL(string: self.url!)!))

        return webview
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MainWebView>) {
    }
    
}

struct MainWebViwePrevieweProvider:PreviewProvider {
    static var previews: some View {
        MainWebView(url: "https://www.naver.com")
    }
}
