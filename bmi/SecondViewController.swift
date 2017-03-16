//
//  SecondViewController.swift
//  bmi
//
//  Created by Kazama Ryusei on 2017/03/16.
//  Copyright © 2017年 Malfoy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var webView: UIWebView!
    
    let url: URL = URL(string: "https://ja.wikipedia.org/wiki/%E3%83%9C%E3%83%87%E3%82%A3%E3%83%9E%E3%82%B9%E6%8C%87%E6%95%B0")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // webViewデリゲートを設定
        self.webView.delegate = self
        
        // URL読み込み
        let request: NSURLRequest = NSURLRequest(url: url)
        webView.loadRequest(request as URLRequest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("webViewDidFinishLoad")
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("webViewDidStartLoad")
    }
    
}

