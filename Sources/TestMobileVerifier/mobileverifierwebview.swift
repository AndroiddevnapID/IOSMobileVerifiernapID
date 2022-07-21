//
//  File.swift
//  
//
//  Created by napID on 21/07/22.
//

import Foundation
import UIKit
import WebKit

public class mobileverifierwebview: WKWebView {
    
    public init() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.preferences.javaScriptEnabled = true
        super.init(frame: .zero, configuration: webConfiguration)
        self.scrollView.isScrollEnabled = false
        self.isMultipleTouchEnabled = false
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @discardableResult
    public func load() -> WKNavigation? {
        if let url = URL(string:"https://yyybank.co") {
            let req = URLRequest(url: url)
            return super.load(req)
        }
        return nil
        
    }
}

 
