//
//  HomeTabDataModel.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/23.
//

import Foundation

class DongNeDataModel {
    
    private var arrayDongNeStruct: [DongNeStruct] = [
        DongNeStruct(tag: "취미생활", content: "안녕하세요 오늘 20~30km 장거리 달리기 같이 하실분들 계실까요?", location: "항상배고파, 공릉2동", time: "4분전"),
        DongNeStruct(tag: "동네질문", content: "에어컨 제거 설치 문의 드립니다.", location: "어안, 묵동", time: "1시간 전"),
        DongNeStruct(tag: "분실실종", content: "갈색푸들 수컷 찾습니다. 혹시 보신 분 연락주시면 사례드리겠습니다", location: "하계맨, 월계2동", time: "3시간 전")
    ]
    
    public var count: Int {
        return arrayDongNeStruct.count
    }
    
    public func getTagTitle(index: Int) -> String {
        return arrayDongNeStruct[index].tag
    }
    
    public func getContent(index: Int) -> String {
        return arrayDongNeStruct[index].content
    }
    
    public func getLocation(index: Int) -> String {
        return arrayDongNeStruct[index].location
    }
    
    public func getTime(index: Int) -> String {
        return arrayDongNeStruct[index].time
    }
}
