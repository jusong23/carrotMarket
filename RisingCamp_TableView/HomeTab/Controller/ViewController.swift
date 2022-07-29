//
//  ViewController.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    var HomeDataModel = HomeTabDataModel ()
//    var clickedModel = [ClickedModel] = []
    

    
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
        
//        NotificationCenter.default.addObserver(self, selector: #selector(test(_:)), name: NSNotification.Name("title"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(test(_:)), name: NSNotification.Name("Write"), object: nil)
     
    }
        
    @objc func test(_ notification:NSNotification){
        guard let title = notification.userInfo!["title"] as? String else {return}
        guard let price = notification.userInfo!["price"] as? String else {return}
        self.HomeDataModel.inputData(image: "IMG_1394.JPG", name: title, location: "월계동, 지금", price: price)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
        self.HomeDataModel.arrayHomeStruct.reverse()
        if UserDefaults.standard.integer(forKey: "DeleteKey") == 1 {
            self.HomeDataModel.removeData()
            UserDefaults.standard.setValue(0, forKey: "DeleteKey")
        }
        self.tableView?.reloadData()
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cellImage = HomeDataModel.getImage(index: indexPath.row)
        let cellName = HomeDataModel.getName(index: indexPath.row)
        
//        print(cellImage)
//        print(cellName)
        
        NotificationCenter.default.post(name: NSNotification.Name("Detail"), object: nil, userInfo: ["Image": cellImage ?? "",
            "Name":cellName ?? ""])
        
        guard let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeDetailViewController") as? HomeDetailViewController else {return}
            self.navigationController?.pushViewController(ViewController, animated: true)
    } // 해당 인덱스의 사진 제목을 넘길 것임
}

