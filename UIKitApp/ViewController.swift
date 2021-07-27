//
//  ViewController.swift
//  UIKitApp
//
//  Created by Kristina on 27.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var upLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(25)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 3
        segmentedControl.insertSegment(withTitle: "Лето", at: 2, animated: false)
        segmentedControl.insertSegment(withTitle: "Осень", at: 3, animated: false)
    }


    @IBAction func changeSegment() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = """
декабрь,
январь,
февраль
"""
            upLabel.text = "Выбери осень"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = """
март,
апрель,
май
"""
            upLabel.text = "Выбери лето"
            mainLabel.textColor = .black
        case 2:
            mainLabel.text = """
июнь,
июль,
август
"""
            upLabel.text = "Выбери зиму"
            mainLabel.textColor = .purple
        case 3:
            mainLabel.text = """
сентябрь,
октябрь,
ноябрь
"""
            upLabel.text = "Выбери весну"
            mainLabel.textColor = .gray
        default:
            break
        }
    }
}

