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
        
        colorView.layer.cornerRadius = 15
        
        changeRGBLabels()
        
        changeColorOfView()
    }
    
    @IBAction func rgbSliderAction() {
        changeRGBLabels()
        changeColorOfView()
    }
    
    private func changeRGBLabels() {
        redValueLabel.text = String(format: "%.2f",redSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func changeColorOfView() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}

