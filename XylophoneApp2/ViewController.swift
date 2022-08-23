//
//  ViewController.swift
//  XylophoneApp2
//
//  Created by Dilara Elçioğlu on 23.08.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonPressed(_ sender: UIButton) {
        //playSound(soundName: sender.currentTitle!)
        print(sender.titleLabel?.text ?? "default")
    }

   
    
    func playSound(soundName:String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        

    }
    
}

