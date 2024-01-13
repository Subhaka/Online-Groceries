//
//  OnlineGroceriesApp.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-12.
//

import SwiftUI
import Firebase

@main
struct OnlineGroceriesApp: App {
    let groceriesModelData = GroceriesModelData()
    @StateObject var authVM = AuthViewModel()
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            WelcomeView().environmentObject(groceriesModelData).environmentObject(authVM)
        }
    }
}
