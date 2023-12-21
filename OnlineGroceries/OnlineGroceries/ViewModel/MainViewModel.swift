//
//  MainViewModel.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-13.
//

import SwiftUI

class MainViewModel: ObservableObject {
    static var shared: MainViewModel = MainViewModel()
    @Published var txtUsername: String = ""
    @Published var txtEmail: String = ""
    @Published var txtPassword: String = ""
    @Published var isShowingPassword: Bool = false
    
    // function to post data to backend for login
    //implement service call in another class
    // function to post data to backend for signup
}

