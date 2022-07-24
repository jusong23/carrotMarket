//
//  HomeTabDataModel.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/23.
//

import Foundation

class DongNeDataModel {
    private var tag: [String] = [
        "취미생활",
        "동네질문",
        "분실실종"
    ]
    
    private var content: [String] = [
        "안녕하세요 오늘 20~30km 장거리 달리기 같이 하실분들 계실까요?",
        "에어컨 제거 설치 문의 드립니다.",
        "갈색푸들 수컷 찾습니다. 혹시 보신 분 연락주시면 사례드리겠습니다",
    ]
    
    private var location: [String] = [
        "항상배고파, 공릉2동",
        "어안, 묵동",
        "하계맨, 월계2동"
    ]
    
    private var time: [String] = [
        "4분전",
        "1시간 전",
        "3시간 전"
    ]
    
    public var count: Int {
        return tag.count
    }
    
    public func getTagTitle(index: Int) -> String {
        return tag[index]
    }
    
    public func getContent(index: Int) -> String {
        return content[index]
    }
    
    public func getLocation(index: Int) -> String {
        return location[index]
    }
    
    public func getTime(index: Int) -> String {
        return time[index]
    }
}
