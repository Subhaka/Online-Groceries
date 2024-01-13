//
//  HomeViewModel.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-19.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    static var shared: HomeViewModel = HomeViewModel()
    @Published var selectTab: Int = 0
    @Published var txtSearch: String = ""
    
}


