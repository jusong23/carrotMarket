//
//  WriteForDealViewController.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/24.
//

import UIKit

class WriteForDealViewController: UIViewController {
    
    let HomeDataModel = HomeTabDataModel ()
    var dataModel = CategoryDataModel ()
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    
    @IBOutlet weak var selectedCategory: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
    }
    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func chooseCategory(_ sender: Any) {
        guard let ChooseCategoryViewController = self.storyboard?.instantiateViewController(withIdentifier: "ChooseCategoryViewController") as? ChooseCategoryViewController else {return}
            ChooseCategoryViewController.delegate = self
            self.navigationController?.pushViewController(ChooseCategoryViewController, animated: true)
    }
    
    @IBAction func tapCompleteButton(_ sender: Any) {
        self.HomeDataModel.inputData(image: "IMG_1654.jpg", name: self.titleTextField.text ?? "", location: "신설동, 지금")
        var lastNumber = HomeDataModel.count
        print(lastNumber)
        print(HomeDataModel.getName(index: lastNumber - 1))
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}

extension WriteForDealViewController: sendDataDelegate {
    func sendData(index: Int) {
        self.selectedCategory.text = dataModel.getCategory(index: index)
    }
}
// 카테고리 선택하면 유저디폴트로 인덱스 저장 그 인덱스 해당하는 셀 색깔 바꾸기 (뷰 디드로드 테이블뷰 리로드데이타)
