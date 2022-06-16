//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Konstantin Simusev on 16.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var helloWorldLabel: UILabel!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelSettings()
        setButtonSettings()
    }

    @IBAction func startPressed() {
        helloWorldLabel.isHidden.toggle()
        
        if helloWorldLabel.isHidden {
            startButton.setTitle("Show text", for: .normal)
        } else {
            startButton.setTitle("Hide text", for: .normal)
        }
    }
    
    private func setLabelSettings() {
        helloWorldLabel.isHidden = true
        helloWorldLabel.textColor = .systemPink
    }
    
    private func setButtonSettings() {
        startButton.setTitle("Start the game", for: .normal)
        startButton.layer.cornerRadius = 13
        
    }
    
}

