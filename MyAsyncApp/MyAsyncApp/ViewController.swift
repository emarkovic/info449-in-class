//
//  ViewController.swift
//  MyAsyncApp
//
//  Created by Personal on 4/27/17.
//  Copyright © 2017 Ena Markovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        spinner.hidesWhenStopped = true
        spinner.stopAnimating()
        
        progressBar.progress = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startPressed(_ sender: Any) {
        // start the spinner on ui thread
        spinner.startAnimating()
        
        // put task into grobal dispatch queue
        // global is not for ui
        DispatchQueue.global().async{
            NSLog("beginning sleep cycle")
            for i in 0 ... 20 {
                DispatchQueue.main.async {
                    self.progressBar.progress = Float(i) * 0.05
                }
                Thread.sleep(forTimeInterval: 1)
            }
//            Thread.sleep(forTimeInterval: 20)
            NSLog("Coming back awake")
            
            // put UI task into main/UI dispatchQueue
            // main is for ui updates
            DispatchQueue.main.async {
                // stop and hide spinner, update label
                self.spinner.stopAnimating()
                self.label.text! = "we did something long"
            }
        }
        
        
    }

}

