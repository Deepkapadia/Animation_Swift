//
//  ViewController.swift
//  AnimationSwift
//
//  Created by MACOS on 7/5/17.
//  Copyright © 2017 MACOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CAAnimationDelegate {

    
    @IBOutlet weak var view1: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnclick(_ sender: Any) {
        
        UIView.beginAnimations(nil, context: nil);
        UIView.setAnimationDuration(1.3);
        
        view1.frame=CGRect(x: 30, y: 300, width: 100, height: 100);
        UIView.setAnimationDelegate(self);
        
        UIView.commitAnimations();
        
    }
    
    func animationDidStart(_ anim: CAAnimation) {
        
        
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        
        UIView.beginAnimations(nil, context: nil);
        UIView.setAnimationDuration(1.3);
        
        
        view1.frame = CGRect(x: 60 , y: 28, width: 206, height: 112);
        
        UIView.commitAnimations();
    }

}

