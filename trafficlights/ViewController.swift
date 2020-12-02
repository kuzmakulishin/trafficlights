//
//  ViewController.swift
//  trafficlights
//
//  Created by Kuzma Kulishin on 01.12.2020.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLigth: UIView!
    @IBOutlet var greenLigth: UIView!
    @IBOutlet var buttonStatus: UIButton!
    
    enum ChangeColor {
        case off, red, yellow, green
    }
    
    var changeColor = ChangeColor.off
    
    
    let lightOn: CGFloat = 1
    let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        redLight.alpha = lightOff
        yellowLigth.alpha = lightOff
        greenLigth.alpha = lightOff
        
        redLight.layer.cornerRadius = redLight.layer.frame.height / 2
        yellowLigth.layer.cornerRadius = yellowLigth.layer.frame.height / 2
        greenLigth.layer.cornerRadius = greenLigth.layer.frame.height / 2
        buttonStatus.layer.cornerRadius = 15
        
    }

    @IBAction func startButton(_ sender: UIButton) {
        
        
        switch changeColor {
        case .off:
            redLight.alpha = lightOn
            changeColor = .red
            buttonStatus.setTitle("Next yellow", for: .normal)
            buttonStatus.setTitleColor(UIColor.systemYellow, for: .normal)
        case .red:
            redLight.alpha = lightOff
            yellowLigth.alpha = lightOn
            greenLigth.alpha = lightOff
            changeColor = .yellow
            buttonStatus.setTitle("Next green", for: .normal)
            buttonStatus.setTitleColor(UIColor.systemGreen, for: .normal)
        case .yellow:
            redLight.alpha = lightOff
            yellowLigth.alpha = lightOff
            greenLigth.alpha = lightOn
            changeColor = .green
            buttonStatus.setTitle("Next red", for: .normal)
            buttonStatus.setTitleColor(UIColor.systemRed, for: .normal)
        case .green:
            yellowLigth.alpha = lightOff
            redLight.alpha = lightOn
            greenLigth.alpha = lightOff
            changeColor = .red
            buttonStatus.setTitle("Next yellow", for: .normal)
            buttonStatus.setTitleColor(UIColor.systemYellow, for: .normal)
            
        }
        
    }
    
}

