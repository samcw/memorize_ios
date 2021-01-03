//
//  Array+Only.swift
//  Memorize
//
//  Created by 周珊 on 2021/1/3.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
