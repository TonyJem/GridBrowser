//
//  ViewController.swift
//  GridBrowser
//
//  Created by Anton on 2020-09-25.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKNavigationDelegate {
    //    MARK: Properties
    var rows: NSStackView!
    
    //    MARK: - StartHere
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1: Create the stack view and add it to our view
        rows = NSStackView()
        rows.orientation = .vertical
        rows.distribution = .fillEqually
        rows.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rows)
        
        // 2: Create Auto Layout constrains that pins the stack view to the edges of its container
        rows.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        rows.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        rows.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        rows.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        // 3: Create an initial column that contains a single webview
        let column = NSStackView(views: [makeWebView()])
        column.distribution = .fillEqually
        
        // 4: Add this column to the 'rows' stack view
        rows.addArrangedSubview(column)
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    //    MARK: - IBActions
    @IBAction func urlEntered(_ sender: NSTextField){
    }
    
    @IBAction func navigationClicked(_ sender: NSSegmentedControl){
    }
    
    @IBAction func adjustRows(_ sender: NSSegmentedControl){
    }
    
    @IBAction func adjustColumns(_ sender: NSSegmentedControl){
    }
    
    //    MARK: - Methods
    func makeWebView() -> NSView {
        let webView = WKWebView()
        webView.navigationDelegate = self
        webView.wantsLayer = true
        webView.load(URLRequest(url: URL(string: "http://www.apple.com")!))
        
        return webView
    }
    
}

