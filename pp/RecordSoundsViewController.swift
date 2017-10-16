//
//  RecordSoundsViewController.swift
//  pp
//
//  Created by Maurizio Pietrantuono on 16/10/2017.
//  Copyright © 2017 Maurizio Pietrantuono. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundsViewController: UIViewController {
    
    @IBOutlet weak var recordingLabel: UILabel!
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var stopRecording: UIButton!
    
    var audioRecorder: AVAudioRecorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecording.isEnabled = false
    }
    
    @IBAction func recordAudio(_ sender: UIButton) {
        recordingLabel.text = "Recording in  progress"
        stopRecording.isEnabled = true
        recordButton.isEnabled = false
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        print(filePath)
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, with:AVAudioSessionCategoryOptions.defaultToSpeaker)
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    
    @IBAction func stopRecording(_ sender: UIButton) {
        stopRecording.isEnabled = false
        recordButton.isEnabled = true
        recordingLabel.text = "Tap to record"
        audioRecorder.stop()
        let audiosession=AVAudioSession.sharedInstance()
        try! audiosession.setActive(false)
    }
    
}

