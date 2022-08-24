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
        ebutton.xlabelText = "E"
        dbutton.xlabelText = "D"
        ccbutton.xlabelText = "Cc"
        
        cbutton.backgroundColor = UIColor.gray
        bbutton.backgroundColor = UIColor.orange
        abutton.backgroundColor = UIColor.gray
        gbutton.backgroundColor = UIColor.orange
        fbutton.backgroundColor = UIColor.gray
        ebutton.backgroundColor = UIColor.orange
        dbutton.backgroundColor = UIColor.gray
        ccbutton.backgroundColor = UIColor.orange
        
        
    
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonPressed(_ sender: XButton) {
        playSound(soundName: sender.xlabelText!)
        
        //Reduces the sender's (the button that got pressed) opacity to half.
                sender.alpha = 0.5
                
                //Code should execute after 0.2 second delay.
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    //Bring's sender's opacity back up to fully opaque.
                    sender.alpha = 1.0
                }
    }

   
    
    func playSound(soundName:String) {
        if let url = Bundle.main.url(forResource: soundName, withExtension: "wav"){
            player = try! AVAudioPlayer(contentsOf: url)
        player.play()
        }else{
            print("error")
        }

    }
    
}

