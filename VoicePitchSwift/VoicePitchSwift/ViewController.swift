//
//  ViewController.swift
//  VoicePitchSwift
//
//  Created by Shuvo Amin on 27/11/2016.
//  Copyright © 2016 Shuvo Amin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RecordAudio: UIButton!
    @IBOutlet weak var RecordAudioHelperLabel: UILabel!
    @IBOutlet weak var StopRecordAudio: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        StopRecordAudio.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnRecordAudio(_ sender: Any) {
        RecordAudio.isEnabled = false
        print("Record Button Pressed")
        StopRecordAudio.isEnabled = true
    }

    @IBAction func StopRecordAudio(_ sender: Any) {
        print("Stop Record Button Pressed")
        StopRecordAudio.isEnabled = false
        RecordAudio.isEnabled = true
    }
}

