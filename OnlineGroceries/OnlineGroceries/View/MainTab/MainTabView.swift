//
//  MainTabView.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-19.
//

import SwiftUI

struct MainTabView: View {
    @StateObject var homeVM = HomeViewModel.shared
    var body: some View {
        VStack{
            TabView(selection: $homeVM.selectTab){
                HomeView().tag(0)
                ExploreView().tag(1)
                CartView().tag(2)
                FavouriteView().tag(3)
                ExploreView().tag(4)
            }.onAppear{
                UIScrollView.appearance().isScrollEnabled = false
            }.tabViewStyle(.page(indexDisplayMode:.never)).onChange(of: homeVM.selectTab){
                newValue in debugPrint("Sel Tab: \(newValue)")
            }
            HStack{
                TabButton(title: "Shop",icon: "house", isSelected: homeVM.selectTab == 0){
                    homeVM.selectTab = 0
                    print("Store Tab Clicked")
                    DispatchQueue.main.async {
                        withAnimation{
                            homeVM.selectTab = 0
                        }
                    }
                    
                }
                
                TabButton(title: "Explore",icon: "magnifyingglass", isSelected: homeVM.selectTab == 1){
                    homeVM.selectTab = 1
                    print("Explore Tab Clicked")
                    DispatchQueue.main.async {
                        withAnimation{
                            homeVM.selectTab = 1
                        }
                    }
                }
                
                TabButton(title: "Cart",icon: "cart", isSelected: homeVM.selectTab == 2){
                    homeVM.selectTab = 2
                    print("Cart Tab Clicked")
                    DispatchQueue.main.async {
                        withAnimation{
                            homeVM.selectTab = 2
                        }
                    }
                }
                
                TabButton(title: "Favourites",icon: "heart", isSelected: homeVM.selectTab == 3){
                    homeVM.selectTab = 3
                    print("Favourite Tab Clicked")
                    DispatchQueue.main.async {
                        withAnimation{
                            homeVM.selectTab = 3
                        }
                    }
                }

                TabButton(title: "Account",icon: "person", isSelected: homeVM.selectTab == 4){
                    homeVM.selectTab = 4
                }


            }.padding(.top, 10)
            .padding(.bottom,.bottomInsets)
            .padding(.horizontal, 5).background(Color.white).cornerRadius(15).shadow(color: Color.black.opacity(0.15), radius: 3, x: 0, y: -2)
            
        }.ignoresSafeArea()
            .navigationTitle("").navigationBarHidden(true).navigationBarBackButtonHidden(true)
    }

}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
