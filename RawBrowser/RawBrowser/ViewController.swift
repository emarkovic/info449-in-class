//
//  ViewController.swift
//  RawBrowser
//
//  Created by Personal on 5/2/17.
//  Copyright © 2017 Ena Markovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var responseField: UITextView!
    @IBOutlet weak var addressField: UITextField!
    
    @IBAction func browseIt(_ sender: Any) {
        let url = URL(string: addressField.text!)
        NSLog("We will surf to \(String(describing: url?.host)) to \(String(describing: url?.path)) on \(url?.port ?? 80)")
        
        let sessionConfig = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfig)
//        let request = try! URLRequest(url: url!)
        
        let task = session.dataTask(with: url!) { (data: Data?, response: URLResponse?, err: Error?) in
            NSLog("We got response: \(response!), error: \(err)")
            self.responseField.text = data!.debugDescription
        }
        task.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

