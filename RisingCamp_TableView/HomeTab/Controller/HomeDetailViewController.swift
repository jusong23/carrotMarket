//
//  HomeDetailViewController.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/29.
//

import UIKit

class HomeDetailViewController: UIViewController {

    var clickedDataModel = ClickedDataModel ()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var image: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(test(_:)), name: NSNotification.Name("Detail"), object: nil)
        print(self.clickedDataModel.count)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = true
        print(self.clickedDataModel.count)
    }
    
    @IBAction func tapRemove(_ sender: Any) {
        self.showAlertController(style: UIAlertController.Style.actionSheet)
    }

    @IBAction func tapBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func test(_ notification:NSNotification){
        
        guard let image = notification.userInfo!["Image"] as? String else {return}
        guard let name = notification.userInfo!["Name"] as? String else {return}
        self.clickedDataModel.inputData(image: image, name: name)
        print(name)

//        self.makeImageAndName()
    }
    
//    func makeImageAndName() {
//        self.image.image = UIImage(named: clickedDataModel.arrayStruct[1].image ?? "")
//        self.nameLabel.text = clickedDataModel.arrayStruct[1].name ?? ""
//    }
    
    func showAlertController(style: UIAlertController.Style) {
        
        let alertController: UIAlertController
        alertController = UIAlertController(title: nil, message: nil, preferredStyle: style)

        let button1: UIAlertAction
        // handler는 alert action이 선택됐을때, OK버튼이 실행된다면
        // 실행될 코드 블럭을 의미한다
        button1 = UIAlertAction(title: "거래 후기 보내기", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction) in print("OK pressed")
        })
        
        let button2: UIAlertAction
        // handler는 alert action이 선택됐을때, OK버튼이 실행된다면
        // 실행될 코드 블럭을 의미한다
        button2 = UIAlertAction(title: "판매중으로 변경", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction) in print("OK pressed2")
        })

        let button3: UIAlertAction
        // handler는 alert action이 선택됐을때, OK버튼이 실행된다면
        // 실행될 코드 블럭을 의미한다
        button3 = UIAlertAction(title: "게시글 수정", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction) in print("OK pressed")
        })
        
        let button4: UIAlertAction
        // handler는 alert action이 선택됐을때, OK버튼이 실행된다면
        // 실행될 코드 블럭을 의미한다
        button4 = UIAlertAction(title: "숨기기", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction) in print("OK pressed2")
        })
        
        let button5: UIAlertAction
        // handler는 alert action이 선택됐을때, OK버튼이 실행된다면
        // 실행될 코드 블럭을 의미한다
        button5 = UIAlertAction(title: "삭제", style: UIAlertAction.Style.default, handler: { (action: UIAlertAction) in print("OK pressed2")
        })
        button5.setValue(UIColor.red, forKey: "titleTextColor")

        let cancelAction: UIAlertAction
        // nil은 사용자가 누르면 아무 액션없이 alert이 dismiss된다
        cancelAction = UIAlertAction(title: "취소", style: UIAlertAction.Style.cancel, handler: nil)

        alertController.addAction(button1)
        alertController.addAction(button2)
        alertController.addAction(button3)
        alertController.addAction(button4)
        alertController.addAction(button5)

        alertController.addAction(cancelAction)

        self.present(alertController, animated: true, completion: { print("Alert controller shown") })
    }

}
