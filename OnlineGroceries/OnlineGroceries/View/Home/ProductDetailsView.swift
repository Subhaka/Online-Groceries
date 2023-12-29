//
//  ProductDetailsView.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-27.
//

import SwiftUI

struct ProductDetailsView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var productVM = ProductDetailsViewModel.shared
    var body: some View {
        ZStack{
            ScrollView{
                ZStack{
                    Rectangle().foregroundColor(Color(hex: "F2F2F2")).frame(width: .screenWidth, height: .screenWidth * 0.8).cornerRadius(50, corner:[.bottomLeft,.bottomRight])
                    
                    Image("banana").resizable().scaledToFit().frame(width: .screenWidth * 0.7,height: 200)
                    
                }.frame(width: .screenWidth, height: .screenWidth * 0.8)
                VStack{
                    HStack{
                        Text("Banana").font(.system(size: 36, weight: .bold)).foregroundColor(.primaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        Button(action: {
                            productVM.isFavItem.toggle()
                        }) {
                            if productVM.isFavItem {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25)
                                    .foregroundColor(.red)
                            } else {
                                Image(systemName: "heart")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25)
                                    .foregroundColor(.red)
                            }
                        }
                        .foregroundColor(.secondaryText)
                        
                    }
                    Text("7pcs, Price").font(.system(size: 14,weight: .medium)).foregroundColor(.secondaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    HStack{
                        Button{
                            if(productVM.qnty>0){
                                productVM.qnty -= 1
                            }else{
                                productVM.qnty = 0
                            }
                            
                        }label: {
                            Image(systemName:"minus").resizable().scaledToFit().frame(width: 25,height: 25).foregroundColor(.secondaryText)
                        }.padding(15)
                        Text("\(productVM.qnty)").font(.system(size: 24, weight: .medium)).multilineTextAlignment(.center)
                            .frame(width: 45, height: 45, alignment: .center).overlay{
                                RoundedRectangle(cornerRadius: 16).stroke(Color.placeholder.opacity(0.5) ,lineWidth: 1)
                            }
                        Button{
                            productVM.qnty += 1
                        }label: {
                            Image(systemName:"plus").resizable().scaledToFit().frame(width: 25,height: 25).foregroundColor(.primaryApp)
                        }.padding(15)
                        Spacer()
                        Text("$2.99").font(.system(size: 24,weight: .bold)).foregroundColor(.primaryText)
                    }.padding(.vertical, 8)
                    Divider()
                }.padding(20)
                
                
                
                VStack{
                    HStack{
                        Text("Product Details").font(.system(size: 16, weight: .semibold)).foregroundColor(.primaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        Button {
                            productVM.isShowDetails.toggle()
                        } label: {
                            
                            Image(systemName: productVM.isShowDetails ? "chevron.up" : "chevron.forward").resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.black)
                            
                        }
                        .foregroundColor(.secondaryText)
                        
                    }
                    
                    
                    Divider()
                    
                    
                }.padding(.horizontal,20).padding(.vertical, -5)
                VStack{
                    HStack{
                        Text("Nutritions").font(.system(size: 16, weight: .semibold)).foregroundColor(.primaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        Text("100g").font(.system(size: 10, weight: .semibold)).foregroundColor(.secondaryText).padding(8).background(Color.placeholder.opacity(0.5)).cornerRadius(5)
                        
                        Button{
                            productVM.isShowNut.toggle()
                            
                        }label: {
                            
                            Image(systemName: !productVM.isShowNut ? "chevron.forward" : "chevron.up").resizable().scaledToFit().frame(width: 20,height: 20)
                                .foregroundColor(.black)
                        }.foregroundColor(.secondaryText)
                    }
                    
                    Divider()
                    
                    HStack{
                        Text("Review").font(.system(size: 16, weight: .semibold)).foregroundColor(.primaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        HStack{
                            ForEach(1...5, id: \.self){ index in
                                Image(systemName: "star.fill").resizable().scaledToFit().foregroundColor(.orange)
                            }
                        }
                        Button{
                            
                        }label: {
                            Image(systemName: "chevron.forward").resizable().scaledToFit().frame(width: 20, height: 20).foregroundColor(.black)
                        }
                    }.padding(.vertical,8)
                    Divider()
                    RoundButton(title: "Add To Basket").padding(.vertical, 40)
                }.padding(.horizontal,20).padding(.vertical, 15)
            }
            VStack{
                
                HStack{
                    Button{
                        mode.wrappedValue.dismiss()
                    }label: {
                        Image("back").resizable().scaledToFit().frame(width: 25, height: 25)
                    }
                    Spacer()
                    
                    Button{
                        mode.wrappedValue.dismiss()
                    }label: {
                        Image(systemName:"square.and.arrow.up").resizable().scaledToFit().frame(width: 25, height: 25).foregroundColor(.black)
                    }
                }
                Spacer()
                
            }.padding(.top, .topInsets).padding(.horizontal, 20)
            
        }.navigationTitle("").navigationBarBackButtonHidden(true).navigationBarHidden(true).ignoresSafeArea()
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView()
    }
}
