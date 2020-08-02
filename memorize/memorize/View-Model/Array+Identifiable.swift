//
//  Array+Identifiable.swift
//  memorize
//
//  Created by Ana Thayna Franca on 01/08/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return 0
    }
}
