//
//  HomeView.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-19.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeVM =   HomeViewModel.shared
    @EnvironmentObject var groceriesModelData: GroceriesModelData
    @State var catID: String = ""
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    Image("color_logo").resizable().scaledToFit().frame(width: 25)
                    HStack{
                        
                        Image("location").resizable().scaledToFit().frame(width: 16, height: 16)
                        
                        Text("Colombo, Sri Lanka").font(.system(size: 18, weight: .semibold)).foregroundColor(.darkGray)
                    }
                    VStack{
                        SearchTextField(placeholder: "Search Store", txt: $homeVM.txtSearch).padding(.vertical, 10)
                        
                        Image("banner_top").resizable().scaledToFill().frame(height: 115)
                        
                        SectionTitleAll(title: "Exclusive Offer",titleAll: "See All"){
                            
                        }
                        
                        ScrollView(.horizontal) {
                            LazyHStack {
                                ForEach(groceriesModelData.modelData.filter { $0.divisionName == "ExclusiveOffer" }, id: \.id) { grocery in
                                    NavigationLink(destination: ProductDetailsView(item: grocery)) {
                                        ProductCall(item: grocery)
                                            .padding(8)
                                    }
                                }
                            }
                            .padding(.vertical, 4)
                        }
                        
                        
                        SectionTitleAll(title: "Best Selling",titleAll: "See All"){
                            
                            
                        }
                        
                        ScrollView(.horizontal) {
                            LazyHStack {
                                ForEach(groceriesModelData.modelData.filter { $0.divisionName == "BestSelling" }, id: \.id) { grocery in
                                    NavigationLink(destination: ProductDetailsView(item: grocery)) {
                                        ProductCall(item: grocery)
                                            .padding(8)
                                    }
                                }
                            }
                            .padding(.vertical, 4)
                        }
                        
                        VStack{
                            SectionTitleAll(title: "Groceries",titleAll: "See All"){
                                
                            }
                            
                            ScrollView(.horizontal){
                                LazyHStack{
                                    ForEach(groceriesModelData.modelCatData) { cat in
                                        
                                        CategoryCall(item: cat) {
                                            print("CAT ID \(cat.id)")
                                            if(cat.id == "2"){
                                                catID = "2"
                                            }
                                            else if(cat.id == "3"){
                                                catID = "3"
                                            } else if(cat.id == "4"){
                                                catID = "4"
                                            } else{
                                                catID = "1"
                                            }
                                        }.padding(4)
                                        
                                        
                                    }
                                }.padding(.vertical, 4)
                            }.padding(.bottom,8)
                            
                            
                            ScrollView(.horizontal){
                                LazyHStack{
                                    if(catID == "2"){
                                        ForEach(groceriesModelData.modelData.filter { $0.categoryName == "Dairy and Eggs" }, id: \.id) { grocery in
                                            NavigationLink(destination: ProductDetailsView(item: grocery)) {
                                                ProductCall(item: grocery)
                                                    .padding(8)
                                            }
                                        }
                                    }
                                    else if(catID == "3"){
                                        ForEach(groceriesModelData.modelData.filter { $0.categoryName == "Meat and Sea Foods" }, id: \.id) { grocery in
                                            NavigationLink(destination: ProductDetailsView(item: grocery)) {
                                                ProductCall(item: grocery)
                                                    .padding(8)
                                            }
                                        }
                                    }else if(catID == "4"){
                                        ForEach(groceriesModelData.modelData.filter { $0.categoryName == "Grains and Cereals" }, id: \.id) { grocery in
                                            NavigationLink(destination: ProductDetailsView(item: grocery)) {
                                                ProductCall(item: grocery)
                                                    .padding(8)
                                            }
                                        }
                                    }else{
                                        ForEach(groceriesModelData.modelData.filter { $0.categoryName == "Fruits and Vegetables" }, id: \.id) { grocery in
                                            NavigationLink(destination: ProductDetailsView(item: grocery)) {
                                                ProductCall(item: grocery)
                                                    .padding(8)
                                            }
                                        }
                                    }
                                    
                                }.padding(.vertical, 4)
                            }
                        }
                    }.padding(.horizontal, 20).padding(.bottom, 20)
                    
                    
                }.padding(.top, .topInsets).padding(.bottom,15)
            }
        }.ignoresSafeArea().onAppear{
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
