//
//  WebScreen.swift
//  AfricanPalaceApp
//
//  Created by Trill Isaac on 7/1/22.
//

import SwiftUI
import WebKit

// Used for Instagram and Clover Tab

struct WebScreen: UIViewRepresentable {
    
    let url : URL?
    
    //Setup for the UI view where the website will be used
    func makeUIView(context: Context) -> WKWebView {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        return WKWebView(frame: .zero, configuration: config)
    }
    
    //Updates the UI by putting the website into the view
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let myURL = url else {
            return
        }
        let request = URLRequest(url: myURL)
        uiView.load(request)
    }
}


