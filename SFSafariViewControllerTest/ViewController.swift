//
//  ViewController.swift
//  SFSafariViewControllerTest
//
//  Created by Tetsuya Shiraishi on 2015/09/08.
//  Copyright © 2015年 Tetsuya Shiraishi. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    @IBAction func openBtn(sender: AnyObject) {
        
        if #available(iOS 9.0, *) {
            let _url:NSURL = NSURL(string: "http://adobe.com")!
            let _brow = SFSafariViewController(URL: _url, entersReaderIfAvailable: true)
            _brow.delegate = self
            presentViewController(_brow, animated: true, completion: nil)
        } else {
            // Fallback on earlier versions
            let _alert = UIAlertView()
            _alert.title = "SFSafariViewControllerはiOS9以上で動作します。"
            _alert.addButtonWithTitle("OK")
            _alert.show()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @available(iOS 9.0, *)
    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        print("close")
    }
}

