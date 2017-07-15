//
//  TableViewCell.swift
//  swiftDemo
//
//  Created by Vikash on 15/07/17.
//  Copyright © 2017 Vikash. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var label: UILabel!
    @IBOutlet var labelWidthContraint: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
