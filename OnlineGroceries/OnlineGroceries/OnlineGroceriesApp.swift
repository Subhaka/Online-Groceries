//
//  OnlineGroceriesApp.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-12.
//

import SwiftUI

@main
struct OnlineGroceriesApp: App {
    let groceriesModelData = GroceriesModelData()

    var body: some Scene {
        WindowGroup {
            WelcomeView().environmentObject(groceriesModelData)
        }
    }
}
