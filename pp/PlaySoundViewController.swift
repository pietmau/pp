//
//  PlaySoundViewController.swift
//  pp
//
//  Created by Maurizio Pietrantuono on 16/10/2017.
//  Copyright © 2017 Maurizio Pietrantuono. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundViewController: UIViewController {
    
    @IBOutlet weak var slow: UIButton!
    @IBOutlet weak var fast: UIButton!
    @IBOutlet weak var high: UIButton!
    @IBOutlet weak var low: UIButton!
    @IBOutlet weak var echo: UIButton!
    @IBOutlet weak var reverb: UIButton!
    @IBOutlet weak var stop: UIButton!
    
    var recordedAudioURL:URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {
        case slow = 0, fast, chipmunk, vader, echo, reverb
    }
    
    @IBAction func play(_ sender: UIButton){
        print("play")
        switch (ButtonType(rawValue:sender.tag)!) {
        case .slow:
            playSound(rate: 0.5)
        case .fast:
            playSound(rate: 1.5)
        case .chipmunk:
            playSound(pitch: 1000)
        case .vader:
            playSound(pitch: -1000)
        case .echo:
            playSound(echo: true)
        case .reverb:
            playSound(reverb: true)
        }
        configureUI(.playing)
    }
    
    @IBAction func stop(_ sender: UIButton){
        stopAudio()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)  
        slow.contentMode = .center
        slow.imageView?.contentMode = .scaleAspectFit
        fast.contentMode = .center
        fast.imageView?.contentMode = .scaleAspectFit
        high.contentMode = .center
        high.imageView?.contentMode = .scaleAspectFit
        low.contentMode = .center
        low.imageView?.contentMode = .scaleAspectFit
        echo.contentMode = .center
        echo.imageView?.contentMode = .scaleAspectFit
        reverb.contentMode = .center
        reverb.imageView?.contentMode = .scaleAspectFit
        configureUI(.notPlaying)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
    }
    
}
