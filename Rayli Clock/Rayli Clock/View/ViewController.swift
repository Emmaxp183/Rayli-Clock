//
//  ViewController.swift
//  Rayli Clock
//
//  Created by macbook on 10/10/2022.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    @IBOutlet weak var backgroundImage: UIImageView!
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
        if(changeBackgroundSeg.selectedSegmentIndex == 0){
            backgroundImage.image = UIImage(named: "")
        }
        if(changeBackgroundSeg.selectedSegmentIndex == 1){
            backgroundImage.image = UIImage(named: "photo1")
        }
        if(changeBackgroundSeg.selectedSegmentIndex == 2){
            backgroundImage.image = UIImage(named: "photo2")
        }
        if(changeBackgroundSeg.selectedSegmentIndex == 3){
            backgroundImage.image = UIImage(named: "photo3")
        }
    }
   
    @IBAction func showSettingsButton(_ sender: UIButton) {
        if settingsView.isHidden == true {
            settingsView.isHidden = false
            settingsButton.setTitle("Hide Settings", for: UIControl.State.normal)
            settingsButton.alpha = 1.0
        }else{
            settingsView.isHidden = true
            settingsButton.setTitle("Show Settings", for: UIControl.State.normal)
            settingsButton.alpha = 0.3
        }
    }
    
    
    @IBAction func clockFontSeg(_ sender: UISegmentedControl) {
        
        if (changeFontSeg.selectedSegmentIndex == 0){
            clockLabel.font = UIFont(name: "Digital Numbers", size: 36)
        }
        if (changeFontSeg.selectedSegmentIndex == 1){
            clockLabel.font = UIFont(name: "New Waltograph", size: 36)
        }
        if (changeFontSeg.selectedSegmentIndex == 2){
            clockLabel.font = UIFont(name: "Orbitron", size: 36)
        }
        if (changeFontSeg.selectedSegmentIndex == 3){
            clockLabel.font = UIFont(name: "Avenir", size: 36)
        }
    }
}

