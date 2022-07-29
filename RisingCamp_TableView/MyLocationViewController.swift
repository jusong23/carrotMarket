//
//  MyLocationViewController.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/29.
//

import UIKit
import Tabman
import Pageboy

class MyLocationViewController: UIViewController {

    var images = ["IMG_1692.jpg", "IMG_1693.jpg", "IMG_1694.jpg", "IMG_1695.jpg" ]
    
    @IBOutlet weak var controlImages: UIImageView!
    @IBOutlet weak var pageController: UIPageControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        pageController?.numberOfPages = images.count
               // 페이지 컨트롤의 현재 페이지를 0으로 설정
               pageController?.currentPage = 0
               // 페이지 표시 색상을 밝은 회색 설정
               pageController?.pageIndicatorTintColor = UIColor.lightGray
               // 현재 페이지 표시 색상을 검정색으로 설정
               pageController?.currentPageIndicatorTintColor = UIColor.orange
               controlImages?.image = UIImage(named: images[0])

               let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(MyLocationViewController.respondToSwipeGesture(_:)))
               swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
               self.view.addGestureRecognizer(swipeLeft)

               let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(MyLocationViewController.respondToSwipeGesture(_:)))
               swipeRight.direction = UISwipeGestureRecognizer.Direction.right
               self.view.addGestureRecognizer(swipeRight)
    }
 
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
           // 만일 제스쳐가 있다면
           if let swipeGesture = gesture as? UISwipeGestureRecognizer{

               // 발생한 이벤트가 각 방향의 스와이프 이벤트라면
               // pageControl이 가르키는 현재 페이지에 해당하는 이미지를 imageView에 할당
               switch swipeGesture.direction {
                   case UISwipeGestureRecognizer.Direction.left :
                   pageController.currentPage += 1
                   controlImages.image = UIImage(named: images[pageController.currentPage])
                   case UISwipeGestureRecognizer.Direction.right :
                   pageController.currentPage -= 1
                   controlImages.image = UIImage(named: images[pageController.currentPage])
                   default:
                     break
               }

           }
    }
    
    @IBAction func pageChanged(_ sender: UIPageControl) {
        controlImages.image = UIImage(named: images[pageController.currentPage])
    }
}
