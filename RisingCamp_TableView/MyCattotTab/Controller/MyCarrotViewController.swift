//
//  MyCarrotViewController.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/27.
//

import UIKit

class MyCarrotViewController: UIViewController {

    let myCarrotDatamodel = MyCarrotDatamodel ()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.register(
            UINib(nibName: "ProfileCell", bundle: nil),
            forCellReuseIdentifier: "ProfileCell")
        tableView?.register(
            UINib(nibName: "MyCarrotCell", bundle: nil),
            forCellReuseIdentifier: "MyCarrotCell")
        
    }

    
}


extension MyCarrotViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return .leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return .leastNormalMagnitude
    }
    
    
        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 0
        }
    
        func numberOfSections(in tableView: UITableView) -> Int {
            return 4
        }

        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let cell = tableView.dequeueReusableCell(withIdentifier: "MyCarrotCell", for: indexPath) as! MyCarrotCell
            
            if indexPath.section == 0 {
                cell.buttonimage?.setImage(UIImage(systemName: myCarrotDatamodel.firstSection[indexPath.row].buttonSystemImage!), for: .normal)
                cell.MyCarrotCellLabel?.text = "\(myCarrotDatamodel.firstSection[indexPath.row].text!)"
            } else if indexPath.section == 1 {
                cell.buttonimage?.setImage(UIImage(systemName: "\(myCarrotDatamodel.secondSection[indexPath.row].buttonSystemImage!)"), for: .normal)
                cell.MyCarrotCellLabel?.text = "\(myCarrotDatamodel.secondSection[indexPath.row].text!)"
            } else if indexPath.section == 2 {
                cell.buttonimage?.setImage(UIImage(systemName: "\(myCarrotDatamodel.thirdSection[indexPath.row].buttonSystemImage!)"), for: .normal)
                cell.MyCarrotCellLabel?.text = "\(myCarrotDatamodel.thirdSection[indexPath.row].text!)"
            } else if indexPath.section == 3 {
                cell.buttonimage?.setImage(UIImage(systemName: "\(myCarrotDatamodel.fourthSection[indexPath.row].buttonSystemImage!)"), for: .normal)
                cell.MyCarrotCellLabel?.text = "\(myCarrotDatamodel.fourthSection[indexPath.row].text!)"
            }
            return cell
        }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          if section == 0 {
              return 6
            } else if section == 1 {
              return 2
            } else if section == 2 {
                return 3
            } else if section == 3 {
                  return 5
            } else { return 0 }
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 40
      }
    
    
}

// 섹션 넘버 0일때는 프로필 셀 따로 집어넣기
// 1 ~ 5 / 6 ~ 7 / 8 ~ 10 / 11 ~ 13 / 14 ~ 18 섹션 나누기
