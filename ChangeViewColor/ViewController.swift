//
//  ViewController.swift
//  ChangeViewColor
//
//  Created by Андрей Шустов on 23.08.2020.
//  Copyright © 2020 Andrei Shustov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
        
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redValueLabel.text = String(format: "%.2f",redSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        
        changeColorOfView()
    }

    @IBAction func redSliderAction() {
        redValueLabel.text = String(format: "%.2f",redSlider.value)
        changeColorOfView()
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        changeColorOfView()
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        changeColorOfView()
    }
    
    private func changeColorOfView() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
        green: CGFloat(greenSlider.value),
        blue: CGFloat(blueSlider.value),
        alpha: 1.0)
        
    }
}

