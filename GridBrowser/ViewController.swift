//
//  ViewController.swift
//  GridBrowser
//
//  Created by Anton on 2020-09-25.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
}

