//
//  HomeCell.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/23.
//

import UIKit

class HomeCell: UITableViewCell {

    
    @IBOutlet weak var carrotImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var heartCount: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    } // Nib계의 viewDidLoad

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
