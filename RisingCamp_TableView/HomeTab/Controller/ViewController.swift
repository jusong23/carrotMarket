//
//  ViewController.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    var HomeDataModel = HomeTabDataModel ()
    
    var images = ["IMG_1692.jpg", "IMG_1693.jpg", "IMG_1694.jpg", "IMG_1695.jpg" ]

    
    @IBOutlet weak var controlImages: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var pageController: UIPageControl!
    
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
     
        
        pageController?.numberOfPages = images.count
        // 페이지 컨트롤의 현재 페이지를 0으로 설정
        pageController?.currentPage = 0
        // 페이지 표시 색상을 밝은 회색 설정
        pageController?.pageIndicatorTintColor = UIColor.lightGray
        // 현재 페이지 표시 색상을 검정색으로 설정
        pageController?.currentPageIndicatorTintColor = UIColor.orange
        controlImages?.image = UIImage(named: images[0])
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)

        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
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
    
    @objc func test(_ notification:NSNotification){
        guard let title = notification.userInfo!["title"] as? String else {return}
        guard let price = notification.userInfo!["price"] as? String else {return}
        self.HomeDataModel.inputData(image: "IMG_1394.JPG", name: title, location: "월계동, 지금", price: price)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.HomeDataModel.arrayHomeStruct.reverse()
        self.tableView?.reloadData()
        var lastNumber = HomeDataModel.count
        print(lastNumber)
        print(HomeDataModel.getName(index: lastNumber - 1))
        print(HomeDataModel.getPrice(index: lastNumber - 1))
        self.tabBarController?.tabBar.isHidden = false
    }
    
    
    @IBAction func pageChanged(_ sender: UIPageControl) {
        controlImages.image = UIImage(named: images[pageController.currentPage])

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

