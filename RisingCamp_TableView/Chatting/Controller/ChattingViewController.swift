//
//  ChattingViewController.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/25.
//

import UIKit

class ChattingViewController: UIViewController {

    var dataModel = ChatDataModel ()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView?.register(
            UINib(nibName: "ChattingTableViewCell", bundle: nil),
            forCellReuseIdentifier: "ChattingTableViewCell")
    }
    
    
}

extension ChattingViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChattingTableViewCell", for: indexPath) as! ChattingTableViewCell
        cell.image_1.image = UIImage(named: dataModel.getImage_1(index: indexPath.row))
        cell.image_2.image = UIImage(named: dataModel.getImage_2(index: indexPath.row))
        cell.nickName.text = dataModel.getNickName(index: indexPath.row)
        cell.location.text = dataModel.getLocation(index: indexPath.row)
        cell.message.text = dataModel.getMessage(index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // Default 44, 값을 할당
        return CGFloat(80)
    }
}
