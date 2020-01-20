//
//  ViewController.swift
//  TheSwitcher_Artur_Drohobytskyy
//
//  Created by @rtur drohobytskyy on 20/01/2020.
//  Copyright © 2020 @rtur drohobytskyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homeDivisionTableView: UITableView!
    
    private let cell_identifier: String = "homeDivisionCell"
    private var homeDivisions: [HomeDivision] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Clear unused rows
        homeDivisionTableView.tableFooterView = UIView()
        
        //init homeDivisions with sample data
        homeDivisions = Utils.shared.getHomeDivisionsSampleArray()
    }
}

// MARK: TableView protocols implementtation
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeDivisions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cell_identifier, for: indexPath) as! HomeDivisionTableViewCell
        
        if let homeDivision = homeDivisions[indexPath.row] as HomeDivision? {
            cell.setupCell(homeDivision: homeDivision)
        }
        
        cell.delegate = self
        
        return cell
    }
}

// MARK: Implement HomeDivisionCellDelegate in order to update HomeDivisionItem isLightOn property
extension ViewController: HomeDivisionCellDelegate {
    
    func didSwitchLight(homeDivisionItemId: Int?) {
        
        guard let itemId = homeDivisionItemId else {
            return
        }
        
        guard let homeDivision = homeDivisions.filter({ $0.id == itemId }).first else {
            return
        }
        
        if(homeDivision.isLightOn != nil) {
            homeDivision.isLightOn! = !homeDivision.isLightOn!
        }
    }
}

