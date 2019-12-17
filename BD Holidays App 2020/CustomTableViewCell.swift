//
//  CustomTableViewCell.swift
//  BD Holidays App 2020
//
//  Created by Md Sifat on 12/17/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var DateShowLbl: UILabel!
    
    @IBOutlet weak var TitleShowLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
