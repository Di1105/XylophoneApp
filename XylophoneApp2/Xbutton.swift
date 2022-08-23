//
//  XView.swift
//  deneme
//
//  Created by Fatih Saglam on 23.08.2022.
//

import UIKit

class XView: UIControl {
    
    let label = UILabel()
    let dot = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color: UIColor, text: String) {
        super.init(frame: .zero)
        configureUI(text: text, color: color)
    }
    
    func configureUI(text: String = "", color: UIColor = .white) {
        addSubview(label)
        addSubview(dot)
        label.translatesAutoresizingMaskIntoConstraints = false
        dot.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundColor = color
        label.text = text
        label.textColor = .black
        label.transform = CGAffineTransform(rotationAngle: -1 * .pi/2)
        
        dot.layer.cornerRadius = 7.5
        dot.backgroundColor = .black
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            dot.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            dot.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            dot.heightAnchor.constraint(equalToConstant: 15),
            dot.widthAnchor.constraint(equalToConstant: 15)
        ])
    }
    

}
