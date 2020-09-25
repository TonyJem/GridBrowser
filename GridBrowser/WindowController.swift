//
//  WindowController.swift
//  GridBrowser
//
//  Created by Anton on 2020-09-25.
//

import Cocoa

class WindowController: NSWindowController {

    @IBOutlet var addressEntry: NSTextField!
    
    override func windowDidLoad() {
        super.windowDidLoad()
    
        window?.titleVisibility = .hidden
        
        addressEntry.stringValue = "Hello URL!"
    }

}
