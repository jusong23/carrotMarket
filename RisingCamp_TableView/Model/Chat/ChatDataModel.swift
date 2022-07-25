//
//  ChatDataModel.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/25.
//

import Foundation

class ChatDataModel {
    
    private var arrayDongNeStruct: [ChatStruct] = [
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1654.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!"),
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1654.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!"),
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1654.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!"),
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1654.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!"),
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1654.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!"),
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1654.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!"),
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1654.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!"),
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1654.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!"),
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1654.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!"),
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1654.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!"),
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1654.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!"),
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1654.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!"),
        ChatStruct(image_1: "IMG_1654.jpg", image_2: "IMG_1654.jpg", nickName: "계란말이", location: "성내동, 4월27일", message: "넵 감사합니다~!!")
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
