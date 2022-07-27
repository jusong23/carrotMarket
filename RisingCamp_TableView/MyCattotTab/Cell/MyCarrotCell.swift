//
//  MyCarrotCell.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/27.
//

import UIKit

class MyCarrotCell: UITableViewCell {

    @IBOutlet weak var buttonimage: UIButton!
    @IBOutlet weak var MyCarrotCellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
