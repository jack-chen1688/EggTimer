//
//  ViewController.swift
//  EggTimer
//
//  Created by Xuehua Chen on 12/3/16.
//  Copyright © 2016 Xuehua Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var time:Int = 0
    
    @IBOutlet weak var labelTime: UILabel!
    
    func processTimer() {
        if time > 0 {
            time -= 1
        }
    
        labelTime.text = String(time)
    
        if time == 0 {
            timer.invalidate()
        }
    }
    
    @IBAction func startPressed(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }

    @IBAction func pausePressed(_ sender: Any) {
        timer.invalidate()
    }

    @IBAction func resetPressed(_ sender: Any) {
        time = 210
        labelTime.text = String(time)
    }
    
    @IBAction func minusTenPressed(_ sender: Any) {
        if time >= 10 {
            time -= 10
            labelTime.text = String(time)
        }
    }
    
    @IBAction func plusTenPressed(_ sender: Any) {
        time += 10
        labelTime.text = String(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        time = Int(labelTime.text!)!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

