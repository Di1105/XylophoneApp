//
//  ViewController.swift
//  XylophoneApp2
//
//  Created by Dilara Elçioğlu on 23.08.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var cbutton: XButton!
    @IBOutlet weak var bbutton: XButton!
    @IBOutlet weak var abutton: XButton!
    @IBOutlet weak var gbutton: XButton!
    @IBOutlet weak var fbutton: XButton!
    @IBOutlet weak var ebutton: XButton!
    @IBOutlet weak var dbutton: XButton!
    @IBOutlet weak var ccbutton: XButton!
    
    var player : AVAudioPlayer!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cbutton.xlabelText = "C"
        bbutton.xlabelText = "B"
        abutton.xlabelText = "A"
        gbutton.xlabelText = "G"
        fbutton.xlabelText = "F"
        ebutton.xlabelText = "A"
        dbutton.xlabelText = "D"
        ccbutton.xlabelText = "Cc"
        
    
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

