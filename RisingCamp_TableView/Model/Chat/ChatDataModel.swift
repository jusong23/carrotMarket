//
//  ChatDataModel.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/25.
//

import Foundation

class ChatDataModel {
    
    private var arrayDongNeStruct: [ChatStruct] = [
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1656.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!"),
        ChatStruct(image_1: "IMG_1693.jpg", image_2: "IMG_1655.jpg", nickName: "계란", location: "성내동, 4월28일", message: "안녕하세요"),
        ChatStruct(image_1: "IMG_1695.jpg", image_2: "IMG_1695.jpg", nickName: "말이", location: "성내동, 4월29일", message: "넵"),
        ChatStruct(image_1: "IMG_1394.jpg", image_2: "IMG_1693.jpg", nickName: "란말", location: "성내동, 4월29일", message: "아직도 판매하나요"),
        ChatStruct(image_1: "IMG_1655.jpg", image_2: "IMG_1654.jpg", nickName: "계말이", location: "성내동, 4월30일", message: "??"),
        ChatStruct(image_1: "IMG_1656.jpg", image_2: "IMG_1695.jpg", nickName: "말이2", location: "성내동, 4월30일", message: "넵~!!")
    ]
    
    public var count: Int {
        return arrayDongNeStruct.count
    }
    
    public func getImage_1(index: Int) -> String {
        return arrayDongNeStruct[index].image_1
    }
    
    public func getImage_2(index: Int) -> String {
        return arrayDongNeStruct[index].image_2
    }
    
    public func getNickName(index: Int) -> String {
        return arrayDongNeStruct[index].nickName
    }
    
    public func getLocation(index: Int) -> String {
        return arrayDongNeStruct[index].location
    }
    public func getMessage(index: Int) -> String {
        return arrayDongNeStruct[index].message
    }
}
