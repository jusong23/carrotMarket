//
//  CategoryDataModel.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/24.
//

import Foundation

class CategoryDataModel {
    
    private var arrayCategory:[String] = [
    "디지털기기",
    "생활가전",
    "가구/인테리아",
    "유아동",
    "유아도서",
    "생활/가공식품",
    "스포츠/레저",
    "여성잡화",
    "여성의류",
    "남성패션/잡화",
    "게임/취미",
    "뷰티/미용",
    "반려동물용품",
    "도서/티켓/음반",
    "식물",
    "기타 중고물품",
    "삽니다"
    ]
    
    public var count: Int {
        return arrayCategory.count
    }
    
    public func getCategory(index: Int) -> String {
        return arrayCategory[index]
    }
    

}
