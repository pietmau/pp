//
//  ViewController.swift
//  pp
//
//  Created by Maurizio Pietrantuono on 16/10/2017.
//  Copyright © 2017 Maurizio Pietrantuono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordingLabel: UILabel!
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var stopRecording: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecording.isEnabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func recordAudio(_ sender: UIButton) {
        recordingLabel.text = "Recording in  progress"
        stopRecording.isEnabled = true
        recordButton.isEnabled = false
    }
    
    @IBAction func stopRecording(_ sender: UIButton) {
        stopRecording.isEnabled = false
        recordButton.isEnabled = true
        recordingLabel.text = "Tap to record"
    }
    
}

