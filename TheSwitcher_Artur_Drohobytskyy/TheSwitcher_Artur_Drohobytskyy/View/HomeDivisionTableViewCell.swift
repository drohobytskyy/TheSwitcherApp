//
//  HomeDivisionTableViewCell.swift
//  TheSwitcher_Artur_Drohobytskyy
//
//  Created by @rtur drohobytskyy on 20/01/2020.
//  Copyright © 2020 @rtur drohobytskyy. All rights reserved.
//

import UIKit

protocol HomeDivisionCellDelegate {
   func didSwitchLight(homeDivisionItemId: Int?)
}

class HomeDivisionTableViewCell: UITableViewCell {

    @IBOutlet weak var divisionNameLabel: UILabel!
    @IBOutlet weak var switchButton: UISwitch!
    
    var divisionItemId: Int?
    var delegate: HomeDivisionCellDelegate?
    
    func setupCell(homeDivision: HomeDivision) {
        
        //set properties
        divisionItemId = homeDivision.id
        divisionNameLabel.text = homeDivision.divisionName
        switchButton.isOn = homeDivision.isLightOn ?? false
        
        // adjust separator margins
        let margin = divisionNameLabel.frame.origin.x - 3
        self.separatorInset = UIEdgeInsets.init(top: 0, left: margin, bottom: 0, right: margin)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: on switch button changed
    @IBAction func switchLightAction(_ sender: UISwitch) {
        delegate?.didSwitchLight(homeDivisionItemId: divisionItemId)
    }
}
