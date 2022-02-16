//
//  ViewController.swift
//  test12
//
//  Created by sher on 16/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var ShowButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelText.isHidden = true
        ShowButton.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
    }

    @IBAction func clicker() {
        if labelText.isHidden {
            labelText.isHidden = false
            ShowButton.setTitle("Hidden text", for: .normal)
        }   else {
            labelText.isHidden = true
            ShowButton.setTitle("Show text", for: .normal)
        }
    }
    
}

