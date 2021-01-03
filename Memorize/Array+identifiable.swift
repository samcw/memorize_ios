//
//  Array+identifiable.swift
//  Memorize
//
//  Created by 周珊 on 2021/1/3.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
