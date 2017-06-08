//
//  ViewController.swift
//  Flipper
//
//  Created by Personal on 4/20/17.
//  Copyright © 2017 Ena Markovic. All rights reserved.
//

import UIKit

class FlippingViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        firstViewController = nil
        secondViewController = nil
    }
    
    var firstViewController: FirstViewController!
    var secondViewController: SecondViewController!
    
    fileprivate func firstBuilder() {
        if firstViewController == nil {
            firstViewController = storyboard?
                .initiateViewController(withIdentifier: "First") as! FirstViewController
        }
    }
    
    fileprivate func secondBuilder() {
        if secondViewController == nil {
            secondViewController = storyboard?
                .initiateViewController(withIdentifier: "Second") as! SecondViewController
        }
    }
    
    @IBAction func flipView(_ sender: Any) {
        firstBuilder()
        secondBuilder()
        
        if firstViewController != nil && firstViewController?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            secondViewController.view.frame = view.frame
            switchViewController(firstViewController, to: secondViewController)
        } else {
            
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
    

}

