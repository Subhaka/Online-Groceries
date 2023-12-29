//
//  ProductDetailsViewModel.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-28.
//

import SwiftUI

class ProductDetailsViewModel: ObservableObject {
    static var shared: ProductDetailsViewModel = ProductDetailsViewModel()
    @Published var isFavItem: Bool = false;
    @Published var isShowDetails: Bool = false;
    @Published var isShowNut: Bool = false;
    @Published var qnty: Int = 1;

}
