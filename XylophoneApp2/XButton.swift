//
//  XButton.swift
//  XylophoneApp2
//
//  Created by Fatih Sağlam on 23.08.2022.
//

import UIKit

class XButton: UIButton {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var circle: UIView!
    
    var xlabelText : String? {
        get { return label.text }
        set { label.text = newValue }
    }
    
    var xcolor : UIColor? {
        get { return backgroundColor }
        set { backgroundColor = newValue }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureUI()
    }
    
    func configureUI() {
        let nib = UINib(nibName: "XButton", bundle: nil)
        nib.instantiate(withOwner: self)
        addSubview(contentView)
        label.transform = CGAffineTransform(rotationAngle: -1 * .pi/2)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        circle.translatesAutoresizingMaskIntoConstraints = false
        
        circle.layer.cornerRadius = 7.5
        circle.backgroundColor = .black
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            circle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            circle.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            circle.heightAnchor.constraint(equalToConstant: 15),
            circle.widthAnchor.constraint(equalToConstant: 15)
        ])
        
    }
    
    

}
