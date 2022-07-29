//
//  ClickedDataModel.swift
//  RisingCamp_TableView
//
//  Created by 이주송 on 2022/07/29.
//

import Foundation


class ClickedDataModel {
    
    public var arrayStruct: [ClickedStruct] = [
    ClickedStruct(image: "", name: "")
    ]
    
    public var count: Int {
        return arrayStruct.count
    }

    public func inputData(image:String, name:String) {
        self.arrayStruct.append(ClickedStruct(image: image, name: name))
    }
}
