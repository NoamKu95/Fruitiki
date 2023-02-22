//
//  ColorsUtil.swift
//  Fruitiki
//
//  Created by Noam Kurtzer on 22/02/2023.
//

import SwiftUI

public func generateGradientColors(using fruitName: String) -> [Color] {
    let firstColor = "Color" + fruitName + "Light"
    let secondColor = "Color" + fruitName + "Dark"
    return [Color(firstColor), Color(secondColor)]
}
