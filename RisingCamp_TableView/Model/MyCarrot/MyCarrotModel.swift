//
//  HomeTabDataModel.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/23.
//

import Foundation
import UIKit

class MyCarrotDatamodel {
    
    public var firstSection: [SectionModel] = [
        SectionModel(buttonSystemImage: "location.north.circle", text: "내 동네 설정"),
        SectionModel(buttonSystemImage: "location.viewfinder", text: "동네 인증하기"),
        SectionModel(buttonSystemImage: "bookmark", text: "키워드 알림"),
        SectionModel(buttonSystemImage: "book.closed", text: "당근가계부"),
        SectionModel(buttonSystemImage: "square.grid.2x2", text: "모아보기"),
        SectionModel(buttonSystemImage: "rectangle.and.pencil.and.ellipsis", text: "관심 카테고리 설정")
    ]
    
    public var secondSection: [SectionModel] = [
        SectionModel(buttonSystemImage: "note.text", text: "동네생활 글"),
        SectionModel(buttonSystemImage: "text.bubble", text: "동네생활 댓글")
    ]
    
    public var thirdSection: [SectionModel] = [
        SectionModel(buttonSystemImage: "house", text: "비즈프로필 만들기"),
        SectionModel(buttonSystemImage: "note.text.badge.plus", text: "동네홍보 글"),
        SectionModel(buttonSystemImage: "speaker.wave.2", text: "지역광고")
    ]
    
    public var fourthSection: [SectionModel] = [
        SectionModel(buttonSystemImage: "envelope", text: "친구초대"),
        SectionModel(buttonSystemImage: "arrowshape.turn.up.forward", text: "당근마켓 공유"),
        SectionModel(buttonSystemImage: "mic", text: "공지사항"),
        SectionModel(buttonSystemImage: "beats.headphones", text: "자주 묻는 질문"),
        SectionModel(buttonSystemImage: "gearshape", text: "앱 설정")
    ]
    
    
    
//    public var count: Int {
//        return arrayHomeStruct.count
//    }
//
//    public func getImage(index: Int) -> String {
//        return arrayHomeStruct[index].image
//    }
//
//    public func getName(index: Int) -> String {
//        return arrayHomeStruct[index].name
//    }
//
//    public func getLocation(index: Int) -> String {
//        return arrayHomeStruct[index].location
//    }
//
//    public func getPrice(index: Int) -> String {
//        return arrayHomeStruct[index].price
//    }
//
//    public func inputData(image: String, name: String, location: String, price: String) {
//        self.arrayHomeStruct.append(HomeTabStruct(image: image, name: name, location: location, price: price))
//    }
    
}
