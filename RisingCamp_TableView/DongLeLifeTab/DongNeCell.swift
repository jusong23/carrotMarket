//
//  DongNeCell.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/24.
//

import UIKit

class DongNeCell: UITableViewCell {

    @IBOutlet weak var tagTitle: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var time: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
