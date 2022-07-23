//
//  HomeTabDataModel.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/23.
//

import Foundation

class HomeTabDataModel {
    private var carrotImage: [String] = [
        "IMG_1654.jpg",
        "IMG_1656.jpg",
        "IMG_1655.jpg"
    ]
    
    private var name: [String] = [
        "43인치 TV",
        "책상 세트",
        "엔테이 포켓몬",
    ]
    
    private var location: [String] = [
        "묵동, 4분전",
        "월계동, 끌올 3분전",
        "하계동, 4분전"
    ]
    
    public var count: Int {
        return name.count
    }
    
    public func getImage(index: Int) -> String {
        return carrotImage[index]
    }
    
    public func getName(index: Int) -> String {
        return name[index]
    }
    
    public func getLocation(index: Int) -> String {
        return location[index]
    }
}
