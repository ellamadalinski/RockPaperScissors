//
//  SavedCustomCell.swift
//  RockPaperScissors
//
//  Created by Ella Madalinski on 11/12/21.
//

import UIKit
import Foundation

class SavedCustomCell: UITableViewCell {
    
    @IBOutlet weak var nameLabelOutlet: UILabel!
    @IBOutlet weak var winsLabelOutlet: UILabel!
    @IBOutlet weak var tiesLabelOutlet: UILabel!
    @IBOutlet weak var lossesLabelOutlet: UILabel!
    
    func configure(nl: String, wl: String, tl: String, ll: String){
        nameLabelOutlet.text = nl
        winsLabelOutlet.text = wl
        tiesLabelOutlet.text = tl
        lossesLabelOutlet.text = ll
    }
    

}
