//
//  ProductModel.swift
//  list-ui
//
//  Created by Carlos Amaral on 26/05/22.
//

import Foundation


enum Category {
    case food
    case health
    case tech
}

struct ProductModel {
    let id = UUID()
    var name : String
    var value : Double
    var category : Category
}
