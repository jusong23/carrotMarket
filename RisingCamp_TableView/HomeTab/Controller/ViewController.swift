//
//  ViewController.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    var HomeDataModel = HomeTabDataModel ()
    
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
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(test(_:)), name: NSNotification.Name("price"), object: nil)
        
    }
    
    @objc func test(_ notification:NSNotification){
        guard let price = notification.userInfo!["price"] as? String else {return}
        self.HomeDataModel.inputData(image: "IMG_1654.jpg", name: "제발", location: "돼라", price: price)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.HomeDataModel.arrayHomeStruct.reverse()
        self.tableView.reloadData()
        var lastNumber = HomeDataModel.count
        print(lastNumber)
        print(HomeDataModel.getName(index: lastNumber - 1))
        print(HomeDataModel.getPrice(index: lastNumber - 1))
        self.tabBarController?.tabBar.isHidden = false
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HomeDataModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as! HomeCell
        let cellImage = HomeDataModel.getImage(index: indexPath.row)
        let cellName = HomeDataModel.getName(index: indexPath.row)
        let cellLocation = HomeDataModel.getLocation(index: indexPath.row)
        let cellPrice = HomeDataModel.getPrice(index: indexPath.row)
        
        cell.carrotImage.image = UIImage(named: cellImage)
        cell.titleLabel.text = cellName
        cell.locationLabel.text = cellLocation
        cell.priceLabel.text = cellPrice
        
        return cell
    }
}

