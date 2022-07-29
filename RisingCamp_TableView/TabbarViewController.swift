//
//  TabbarViewController.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/29.
//

import UIKit
import Tabman
import Pageboy

class TabbarViewController: TabmanViewController {
    
    private var viewControllers: [UIViewController] = []
    @IBOutlet weak var tabView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        let firstVC = storyboard?.instantiateViewController(withIdentifier: "FirstFoodViewController") as! FirstFoodViewController
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondFoodViewController") as! SecondFoodViewController
        let thirdVC = storyboard?.instantiateViewController(withIdentifier: "ThirdFoodViewController") as! ThirdFoodViewController
      
//        let fourthVC = storyboard?.instantiateViewController(withIdentifier: "FourthFoodViewController") as! FourthFoodViewController
//        let fifthVC = storyboard?.instantiateViewController(withIdentifier: "FifthFoodViewController") as! FifthFoodViewController
//        let sixthVC = storyboard?.instantiateViewController(withIdentifier: "SixthFoodViewController") as! SixthFoodViewController
//        let seventhVC = storyboard?.instantiateViewController(withIdentifier: "SeventhFoodViewController") as! SeventhFoodViewController
        
        viewControllers.append(firstVC)
        viewControllers.append(secondVC)
        viewControllers.append(thirdVC)
//        viewControllers.append(fourthVC)
//        viewControllers.append(fifthVC)
//        viewControllers.append(sixthVC)
//        viewControllers.append(seventhVC)

        self.dataSource = self
        
        let bar = TMBar.ButtonBar()
        // 배경 회색으로 나옴 -> 하얀색으로 바뀜
        bar.backgroundView.style = .blur(style: .light)
        // 간격 설정
        bar.layout.contentInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        // 버튼 글씨 커스텀
        bar.buttons.customize { (button) in
            button.tintColor = .systemGray4
            button.selectedTintColor = .black
            button.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
            button.selectedFont = UIFont.systemFont(ofSize: 15, weight: .semibold)
        }
        // 밑줄 쳐지는 부분
        bar.indicator.weight = .custom(value: 2)
        bar.indicator.tintColor = .black
        addBar(bar, dataSource: self, at: .custom(view: tabView, layout: nil))
    }
}

extension TabbarViewController: PageboyViewControllerDataSource, TMBarDataSource {
    
    func barItem(for bar: TMBar, at index: Int) -> TMBarItemable {
        switch index {
        case 0:
            return TMBarItem(title: "단골 추천")
        case 1:
            return TMBarItem(title: "최근 본 소식")
        case 2:
            return TMBarItem(title: "먹거리")
        case 3:
            return TMBarItem(title: "생활")
//        case 4:
//            return TMBarItem(title: "건강")
//        case 5:
//            return TMBarItem(title: "미용")
//        case 6:
//            return TMBarItem(title: "교육")

        default:
            let title = "Page \(index)"
           return TMBarItem(title: title)
        }
    }

    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return viewControllers.count
    }
    
    func viewController(for pageboyViewController: PageboyViewController, at index: PageboyViewController.PageIndex) -> UIViewController? {
        return viewControllers[index]
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
}
