//
//  ViewController.swift
//  test12
//
//  Created by sher on 16/2/22.
//

import UIKit

class ViewController: UIViewController {
    enum CurrentView {
        case red, yellow, green
    }

    @IBOutlet weak var RedviewLabel: UIView!
    
    @IBOutlet weak var GreenviewLabel: UIView!
    @IBOutlet weak var YellowviewLabel: UIView!
    
    @IBOutlet weak var StartButton: UIButton!
    
    private var currentLight = CurrentView.red
    private let LightOn:CGFloat = 1
    private let LightOff: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RedviewLabel.alpha = LightOff
        YellowviewLabel.alpha = LightOff
        GreenviewLabel.alpha = LightOff
        
        
    }
    override func viewDidLayoutSubviews() {
        RedviewLabel.layer.cornerRadius = RedviewLabel.frame.height / 2
        YellowviewLabel.layer.cornerRadius = RedviewLabel.frame.height / 2
        GreenviewLabel.layer.cornerRadius = RedviewLabel.frame.height / 2
    }
    @IBAction func NextButton() {
        StartButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            GreenviewLabel.alpha = LightOff
            currentLight = .yellow
            RedviewLabel.alpha = LightOn
        case .yellow:
            
            YellowviewLabel.alpha = LightOn
            currentLight = .green
            RedviewLabel.alpha = LightOff
        case .green:
            GreenviewLabel.alpha = LightOn
            YellowviewLabel.alpha = LightOff
            currentLight = .red
        }
        
    }
    
}

