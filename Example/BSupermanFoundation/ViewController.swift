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
        self.view.addSubview(self.titleLabel)
    }
    
    func ExampleTime(){
        
        //Basics
        let tenMinutes = 10.minutes
        
        //Operations
        let interval = 10.minutes + 15.seconds - 3.minutes + 2.hours // Interval<Minute>
        let doubled = interval * 2
        let seconds = 10.seconds + 3.minutes // Interval<Second>
        
        //You can also use these operations on Date:
        let oneHourAfter = Date() + 1.hours
        
        //Conversions
        let twoMinutesInSeconds = 2.minutes.inSeconds // Interval<Second>
        //convert intervals to Foundation's TimeInterval
        let timeInterval = 5.minutes.timeInterval
        let fiveSecondsInHours = 5.seconds.converted(to: Hour.self) // Interval<Hour>
        // or
        let fiveSecondsInHours2: Interval<Hour> = 5.seconds.converted()
    
        //Comparison you can compare different time units as well
        50.minutes < 1.hours

        //GCD integration:
        //DispatchQueue.main.async(after: fiveSecondsInHours2) {
                // do stuff
        //}
    
    
    }
 

}

