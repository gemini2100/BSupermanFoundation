//
//  ViewController.swift
//  BSupermanFoundation
//
//  Created by gemini2100@msn.com on 03/27/2018.
//  Copyright (c) 2018 gemini2100@msn.com. All rights reserved.
//

import UIKit
import BSupermanFoundation

class ViewController: UIViewController {

    let titleLabel = UILabel().then {
        $0.textAlignment = .center
        $0.textColor = .black
        $0.text = "Hello, World!"
        $0.frame = CGRect(x: 0.0, y: 0.0, width: 200, height: 200)
    }
    
    let imageview = UIImageView().then {       
        
        $0.frame = CGRect(x: 0.0, y: 0.0, width: 200, height: 200)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.imageview)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

