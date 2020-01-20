//
//  DetailsViewController.swift
//  TheSwitcher_Artur_Drohobytskyy
//
//  Created by @rtur drohobytskyy on 20/01/2020.
//  Copyright © 2020 @rtur drohobytskyy. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var containerStackView: UIStackView!
    @IBOutlet weak var divisionNameLabel: UILabel!
    @IBOutlet weak var divisionStateLabel: UILabel!
    
    var homeDivision: HomeDivision?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        setupData()
    }
    
    // MARK: - Autolayout setup
    private func setupLayout() {
        
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = UIColor.init(rgb: Utils.imageBackgroundColor)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 2).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: view.frame.height/4).isActive = true
        
        containerStackView.translatesAutoresizingMaskIntoConstraints = false
        containerStackView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant:20).isActive = true
        containerStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerStackView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        containerStackView.heightAnchor.constraint(equalToConstant: view.frame.height/8).isActive = true
        
        containerStackView.addArrangedSubview(divisionNameLabel)
        containerStackView.addArrangedSubview(divisionStateLabel)
        containerStackView.spacing = 10
    }
    
    // MARK: - set data for UI elements
    private func setupData() {
        
        if let divisionName = homeDivision?.divisionName {
            
            self.navigationItem.title = divisionName
            divisionNameLabel.text = "Your \(divisionName) light is"
        }
        
        if let lightOn = homeDivision?.isLightOn {
            
            if lightOn == true {
                imageView.image = UIImage(named: "light_on")
                divisionStateLabel.text = "ON"
            } else {
                imageView.image = UIImage(named: "light_off")
                divisionStateLabel.text = "OFF"
            }
        }
    }
}
