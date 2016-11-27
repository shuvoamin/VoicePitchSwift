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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnRecordAudio(_ sender: Any) {
        print("Record Button Pressed");
    }

}

