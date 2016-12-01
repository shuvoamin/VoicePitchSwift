//
//  RecordSoundsViewController.swift
//  VoicePitchSwift
//
//  Created by Shuvo Amin on 27/11/2016.
//  Copyright © 2016 Shuvo Amin. All rights reserved.
//

import UIKit

class RecordSoundsViewController: UIViewController {

    @IBOutlet weak var RecordAudio: UIButton!
    @IBOutlet weak var RecordAudioHelperLabel: UILabel!
    @IBOutlet weak var StopRecordAudio: UIButton!
    
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
    }

    @IBAction func StopRecordAudio(_ sender: Any) {
        print("Stop Record Button Pressed")
        RecordAudioHelperLabel.text = "Tap to Record"
        StopRecordAudio.isEnabled = false
        RecordAudio.isEnabled = true
    }
}
