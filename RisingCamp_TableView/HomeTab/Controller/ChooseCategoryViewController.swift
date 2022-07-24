//
//  ChooseCategoryViewController.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/24.
//

import UIKit

protocol sendDataDelegate: AnyObject {
    func sendData(index: Int)
}


class ChooseCategoryViewController: UIViewController {

//    print(getCategory(index: 0))
    
    var dataModel = CategoryDataModel ()
    var delegate: sendDataDelegate?
    
    @IBOutlet weak var tableVIew: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        self.tableVIew.delegate = self
        self.tableVIew.dataSource = self
        self.tableVIew.register(
            UINib(nibName: "CategoryCell", bundle: nil),
            forCellReuseIdentifier: "CategoryCell")
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension ChooseCategoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryCell

        let cellCategory = dataModel.getCategory(index: indexPath.row)
//        print(selectCheck)
//        if self.selectCheck.contains(indexPath.row) {
//            cell.categoryLabel.textColor = .green
//        }
        
        cell.categoryLabel.text = cellCategory
//        let backgroundView = UIView()
//        backgroundView.backgroundColor = .white
//        cell.selectedBackgroundView = backgroundView
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // Default 44, 값을 할당
        return CGFloat(44)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.sendData(index: indexPath.row)
        self.navigationController?.popViewController(animated: true)
    }
}

// 셀 선택시 저거는 빼기
