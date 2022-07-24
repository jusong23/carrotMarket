//
//  HomeTabDataModel.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/23.
//

import Foundation

class HomeTabDataModel {
    
   private var arrayHomeStruct: [HomeTabStruct] = [
        HomeTabStruct(image: "IMG_1654.jpg", name: "43인치 TV", location: "묵동, 4분전"),
        HomeTabStruct(image: "IMG_1656.jpg", name: "책상 세트", location: "월계동, 끌올 3분전"),
        HomeTabStruct(image: "IMG_1655.jpg", name: "엔테이 포켓몬", location: "하계동, 4분전")
   ]
    
    public var count: Int {
        return arrayHomeStruct.count
    }
    
    public func getImage(index: Int) -> String {
        return arrayHomeStruct[index].image
    }
    
    public func getName(index: Int) -> String {
        return arrayHomeStruct[index].name
    }
    
    public func getLocation(index: Int) -> String {
        return arrayHomeStruct[index].location
    }
}
