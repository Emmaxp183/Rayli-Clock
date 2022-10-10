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
        timer = Timer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }

    @objc func updateTime(){
        let timeFormatter = DateFormatter()
    }

}

