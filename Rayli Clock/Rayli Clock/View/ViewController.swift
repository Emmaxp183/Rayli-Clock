//
//  ViewController.swift
//  Rayli Clock
//
//  Created by macbook on 10/10/2022.
//

import UIKit

class ViewController: UIViewController {
    //Properties
   @IBOutlet weak var clockLabel: UILabel!
   var timer = Timer()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        self.updateTime()
    }

   
    
    @objc func updateTime(){
       
        let timeFormatter = DateFormatter()
        timeFormatter.timeStyle = .medium
        clockLabel.text = timeFormatter.string(from: NSDate() as Date)
        
    }

}

