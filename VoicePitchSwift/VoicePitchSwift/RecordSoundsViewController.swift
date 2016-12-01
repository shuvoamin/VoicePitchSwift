//
//  RecordSoundsViewController.swift
//  VoicePitchSwift
//
//  Created by Shuvo Amin on 27/11/2016.
//  Copyright © 2016 Shuvo Amin. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundsViewController: UIViewController, AVAudioRecorderDelegate {

    @IBOutlet weak var RecordAudio: UIButton!
    @IBOutlet weak var RecordAudioHelperLabel: UILabel!
    @IBOutlet weak var StopRecordAudio: UIButton!
    
    var audioRecorder: AVAudioRecorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        StopRecordAudio.isEnabled = false
    }

    @IBAction func btnRecordAudio(_ sender: Any) {
        RecordAudio.isEnabled = false
        print("Record Button Pressed")
        RecordAudioHelperLabel.text = "Recording in progress ..."
        StopRecordAudio.isEnabled = true
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        print(filePath)
        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, with:AVAudioSessionCategoryOptions.defaultToSpeaker)
        
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }

    @IBAction func StopRecordAudio(_ sender: Any) {
        print("Stop Record Button Pressed")
        RecordAudioHelperLabel.text = "Tap to Record"
        StopRecordAudio.isEnabled = false
        RecordAudio.isEnabled = true
        
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        print("Finished recording")
    }
}

