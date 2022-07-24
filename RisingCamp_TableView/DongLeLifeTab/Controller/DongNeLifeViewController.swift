//
//  DongNeLifeViewController.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/24.
//

import UIKit

class DongNeLifeViewController: UIViewController {

    
    var dataModel = DongNeDataModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        tableView?.register(
            UINib(nibName: "DongNeCell", bundle: nil),
            forCellReuseIdentifier: "DongNeCell")
    }
    
    
}

extension DongNeLifeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DongNeCell", for: indexPath) as! DongNeCell
        let cellTagTitle = dataModel.getTagTitle(index: indexPath.row)
        let cellText = dataModel.getContent(index: indexPath.row)
        let cellNameAndLocation = dataModel.getLocation(index: indexPath.row)
        let cellTime = dataModel.getTime(index: indexPath.row)
        
        cell.tagTitle.text = cellTagTitle
        cell.textView.text = cellText
        cell.location.text = cellNameAndLocation
        cell.time.text = cellTime
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // Default 44, 값을 할당
        return CGFloat(210)
    }
}
