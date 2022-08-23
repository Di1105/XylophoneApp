//
//  ViewController.swift
//  XylophoneApp2
//
//  Created by Dilara Elçioğlu on 23.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var aButton: XButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aButton.xlabelText = "A"
        aButton.xcolor = .purple
        // Do any additional setup after loading the view.
    }


}

