//
//  ViewController.swift
//  GachaTech
//
//  Created by Takemi Watanuki on 2015/03/21.
//  Copyright (c) 2015年 your name. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func gacha() {
        
        self.performSegueWithIdentifier("result", sender: nil)
        
    }

    
}

