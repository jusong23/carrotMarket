//
//  CategoryCell.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/24.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.categoryLabel.highlightedTextColor = UIColor(red: 254/255, green: 125/255, blue: 54/255, alpha: 1)
        self.categoryLabel.backgroundColor = .white
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
