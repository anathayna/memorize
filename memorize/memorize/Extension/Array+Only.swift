//
//  Array+Only.swift
//  memorize
//
//  Created by Ana Thayna Franca on 09/08/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
