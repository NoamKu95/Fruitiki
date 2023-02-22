//
//  FruitModel.swift
//  Fruitiki
//
//  Created by Noam Kurtzer on 22/02/2023.
//

import SwiftUI

struct Fruit: Identifiable {
    
    var id = UUID()
    var fruitName: String
    var headline: String
    var imageName: String
    var description: String
    var nutrition: [String]
}
