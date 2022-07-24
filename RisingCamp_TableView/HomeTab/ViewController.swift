//
//  ViewController.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {

    var dataModel = HomeTabDataModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchBarButton: UIBarButtonItem!
    @IBOutlet weak var listBarButton: UIBarButtonItem!
    @IBOutlet weak var bellBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        tableView?.register(
            UINib(nibName: "HomeCell", bundle: nil),
            forCellReuseIdentifier: "HomeCell")
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as! HomeCell
        let cellImage = dataModel.getImage(index: indexPath.row)
        let cellName = dataModel.getName(index: indexPath.row)
        let cellLocation = dataModel.getLocation(index: indexPath.row)
        
        cell.carrotImage.image = UIImage(named: cellImage)
        cell.titleLabel.text = cellName
        cell.locationLabel.text = cellLocation
        
        return cell
    }
}

