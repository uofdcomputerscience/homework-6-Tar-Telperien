//
//  ViewController.swift
//  Homework6
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedController: UISegmentedControl!
    @IBOutlet var selectionSwitch: UISwitch!
    @IBOutlet var selectionButton: UIButton!
    @IBOutlet var continueButton: UIButton!
    
    var segmentedControllerCorrect: Bool = false
    var selectionSwitchOn: Bool = false
    var selectionButtonPressed: Bool = false
    
    @IBAction func segmentedControllerDidChangeValue(_ sender: UISegmentedControl) {
        segmentedControllerCorrect = segmentedController.selectedSegmentIndex == 1
        enableContinueButton()
    }
    
    @IBAction func selectionSwitchDidChangeValue(_ sender: UISwitch) {
        selectionSwitchOn = selectionSwitch.isOn
        enableContinueButton()
    }
    
    @IBAction func selectionButtonTapped(_ sender: UIButton) {
        selectionButton.isSelected.toggle()
        selectionButtonPressed = selectionButton.isSelected
        enableContinueButton()
    }
    
    func enableContinueButton() {
        if selectionSwitch.isOn && selectionButton.isSelected && segmentedController.selectedSegmentIndex == 1 {
            continueButton.isEnabled = true
        }
    }
}

