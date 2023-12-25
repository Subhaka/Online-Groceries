//
//  CategoryStructure.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-25.
//

import Foundation

struct CategoryStructure: Codable, Identifiable {
    var id: String
    let name: String
    let image: String
    let color: String
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case image
        case color
    }
}
