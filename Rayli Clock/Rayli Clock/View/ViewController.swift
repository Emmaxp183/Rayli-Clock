//
//  ViewController.swift
//  Rayli Clock
//
//  Created by macbook on 10/10/2022.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    @IBOutlet weak var settingsView: UIView!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var changeFontSeg: UISegmentedControl!
    @IBOutlet weak var changeBackgroundSeg: UISegmentedControl!
    @IBOutlet weak var clockLabel: UILabel!
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        self.updateTime()
        //Settings
        settingsView.isHidden = true
        settingsView.layer.cornerRadius = 10
        //Button
        settingsButton.layer.cornerRadius = 10
        
    }
    
    
    
    @objc func updateTime(){
        
        let timeFormatter = DateFormatter()
        timeFormatter.timeStyle = .medium
        clockLabel.text = timeFormatter.string(from: NSDate() as Date)
        
    }
    
    
    @IBAction func backgroundImageSeg(_ sender: UISegmentedControl) {
    }
   
    @IBAction func showSettingsButton(_ sender: UIButton) {
        if settingsView.isHidden == true {
            settingsView.isHidden = false
            settingsButton.setTitle("Hide Settings", for: UIControl.State.normal)
        }else{
            settingsView.isHidden = true
            settingsButton.setTitle("Show Settings", for: UIControl.State.normal)
        }
    }
    
    
    @IBAction func clockFontSeg(_ sender: UISegmentedControl) {
    }
}

