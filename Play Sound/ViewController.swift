//
//  ViewController.swift
//  Play Sound
//
//  Created by Budi Irawan on 6/3/15.
//  Copyright (c) 2015 Budi Irawan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playSound(sender: UIButton) {
        
        var audioFilePath = NSBundle.mainBundle().pathForResource("music", ofType: "mp3")
        
        if audioFilePath != nil {
        
            var audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
        
            audioPlayer = AVAudioPlayer(contentsOfURL: audioFileUrl, error: nil)
            audioPlayer.play()

        } else {
            println("audio file is not found")
        }
    }
}

