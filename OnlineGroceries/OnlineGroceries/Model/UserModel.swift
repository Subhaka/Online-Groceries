//
//  UserModel.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-18.
//

import SwiftUI
import Foundation
struct User: Identifiable, Equatable, Codable {
    
    
    let id: String
    let username: String
    let email: String
    
    
    
    
}
extension User{
    static var MOCK_USER = User(id:NSUUID().uuidString, username:"Subhaka Bhavanishankar", email: "subhaka99@gmail.com")
}
