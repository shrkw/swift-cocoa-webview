//
//  ViewController.swift
//  WebView
//
//  Created by 白川 博之 on 2016/02/29.
//  Copyright © 2016年 Hiroyuki Shirakawa. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    @IBOutlet weak var webView: WebView!
    @IBOutlet weak var urlField: NSTextFieldCell!
    
    @IBAction func connect(sender: AnyObject) {
        connectWebPage(self.urlField.stringValue)
    }
    
    @IBAction func bake(sender: AnyObject) {
        let url = "https://www.youtube.com/watch?v=eSEh70joiEQ"
        self.urlField.stringValue = url
            connectWebPage(url)
    }
    
    func connectWebPage(urlStr: String) {
        let url = NSURL(string: urlStr)
        let req = NSURLRequest(URL: url!)
        webView.mainFrame.loadRequest(req)
    }
    
    let defaultUrl = "http://viibar.com"

    override func viewDidLoad() {
        super.viewDidLoad()
        // httpだとapp transport securityが発生する
        self.urlField.stringValue = defaultUrl
        connectWebPage(defaultUrl)
        
//        self.webBrowser.append(browser)
//        self.tabPages.append(self.about_blank)
        
//        self.about_blank.view = browser
        
//        self.getCurrentWebBrowser().mainFrame.loadRequest(req)
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    func getNewBrowser() -> WebView {
        return WebView()
    }

}

