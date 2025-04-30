//
//  DadViewController.swift
//  iKid
//
//  Created by Juan Carlos Garcia on 4/27/25.
//

import Foundation
import UIKit

class DadViewController: UIViewController {
    var jokeLabel: UILabel!
    let punchline = "The odds were against me"
    let jokeSetup = "I got beat up by one, three, five, and seven"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.jokeLabel = UILabel()
        
        jokeLabel.text = jokeSetup
        jokeLabel.textAlignment = .center
        
        
        
        let nextButton = UIButton()
        nextButton.setTitle("Next", for: .normal)
        nextButton.setTitle("Back", for: .selected)
        nextButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        nextButton.setTitleColor(UIColor.black, for: .normal)
        nextButton.backgroundColor = .systemBlue
        nextButton.layer.cornerRadius = 10
        nextButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        

        
        view.addSubview(jokeLabel)
        view.addSubview(nextButton)
        
        jokeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            jokeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            jokeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        nextButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nextButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
        
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        sender.isSelected.toggle()
        if sender.isSelected {
            UIView.transition(with: jokeLabel, duration: 0.3, options: .transitionFlipFromRight) {
                self.jokeLabel.text = self.punchline
            }
        } else {
            
            UIView.transition(with: jokeLabel, duration: 0.3, options: .transitionFlipFromLeft) {
                self.jokeLabel.text = self.jokeSetup
            }
        }
    }
}
