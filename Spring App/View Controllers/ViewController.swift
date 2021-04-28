//
//  ViewController.swift
//  Spring App
//
//  Created by Mikhail Bukhrashvili on 27.04.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var springView: SpringView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var runButton: UIButton!
    
    private var newSpring = SpringDescription.getDescription()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRunButton()
    }
    
    @IBAction func runButtonPressed() {
        setupSpringView()
        newSpring = SpringDescription.getDescription()
        setupRunButton()
    }
    
}

// MARK: - Setup extensions
extension ViewController {
    
    private func setupSpringView() {
        springView.animation = newSpring.preset
        springView.curve = newSpring.curve
        springView.force = CGFloat(newSpring.force)
        springView.duration = CGFloat(newSpring.duration)
        springView.delay = CGFloat(newSpring.delay)
        springView.animate()
        
        descriptionLabel.text = newSpring.textInLabel
    }
    
    private func setupRunButton() {
        runButton.setTitle("Run: \(newSpring.preset)", for: .normal)
    }
    
}
