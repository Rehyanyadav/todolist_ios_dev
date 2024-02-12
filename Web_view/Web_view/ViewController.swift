//
//  ViewController.swift
//  Web_view
//
//  Created by Rehyan Yadav on 08/02/24.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    let webView = WKWebView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        
        guard let url = URL(string: "https://rehyanyadav.github.io/todo-list-webdev/") else {
            return
        }
        
        webView.load(URLRequest(url: url))
            
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
        
    }

}

