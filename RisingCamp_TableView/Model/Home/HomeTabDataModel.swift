//
//  HomeTabDataModel.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/23.
//

import Foundation

class HomeTabDataModel {
    
    public var arrayHomeStruct: [HomeTabStruct] = [
        HomeTabStruct(image: "IMG_1654.jpg", name: "43인치 TV", location: "묵동, 10분전", price: "43,000원"),
        HomeTabStruct(image: "IMG_1656.jpg", name: "책상 세트", location: "월계동, 끌올 7분전", price: "22,000원"),
        HomeTabStruct(image: "IMG_1655.jpg", name: "엔테이 포켓몬", location: "하계동, 4분전", price: "1,000원")
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
    
    public func getPrice(index: Int) -> String {
        return arrayHomeStruct[index].price
    }
    
    public func inputData(image: String, name: String, location: String, price: String) {
        self.arrayHomeStruct.append(HomeTabStruct(image: image, name: name, location: location, price: price))
    }
    
}
