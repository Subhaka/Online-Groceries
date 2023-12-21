//
//  HomeView.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-19.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeVM =   HomeViewModel.shared
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    Image("color_logo").resizable().scaledToFit().frame(width: 25)
                    HStack{
                        
                        Image("location").resizable().scaledToFit().frame(width: 16, height: 16)
                        
                        Text("Colombo, Sri Lanka").font(.system(size: 18, weight: .semibold)).foregroundColor(.darkGray)
                    }
                    SearchTextField(placeholder: "Search Store", txt: $homeVM.txtSearch).padding(.horizontal, 20).padding(.vertical, 10)
                    
                    Image("banner_top").resizable().scaledToFill().frame(height: 115).padding(.horizontal,20)
                }.padding(.top, .topInsets)
            }
        }.ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
