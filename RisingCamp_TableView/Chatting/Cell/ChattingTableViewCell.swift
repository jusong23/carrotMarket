//
//  ChattingTableViewCell.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/25.
//

import UIKit

class ChattingTableViewCell: UITableViewCell {

    @IBOutlet weak var image_1: UIImageView!
    @IBOutlet weak var image_2: UIImageView!
    @IBOutlet weak var nickName: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var message: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
