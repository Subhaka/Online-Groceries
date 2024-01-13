//
//  FavouriteView.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-20.
//

import SwiftUI

struct FavouriteView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        ZStack{
            ScrollView{
                LazyVStack{
                    ForEach(1...5, id: \.self){
                        index in
                        VStack{
                            HStack(spacing: 15){
                                Image("banana").resizable().scaledToFit().frame(width: 100,height: 80)
                                VStack(spacing: 4){
                                    Text("Banana").font(.system(size: 16, weight: .bold)).foregroundColor(.primaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    Text("7pcs, price").font(.system(size: 14, weight: .medium)).foregroundColor(.secondaryText)
                                    .frame(minWidth: 0,maxWidth: .infinity, alignment: .leading)                                }
                                Text("$2.99").font(.system(size: 18, weight: .semibold)).foregroundColor(.primaryText)
                            }
                            Divider()
                        }
                    }
                }.padding(20)
            }.padding(.top, .topInsets + 56)
            VStack{
                HStack{
                    Spacer()
                    Text("Favourites").font(.system(size: 20, weight: .bold)).frame(height: 46)
                    Spacer()
                }.padding(.top, .topInsets).background(.white).shadow(color: Color.black.opacity(0.2), radius: 2)
                Spacer()
                
            }
        }.navigationTitle("").navigationBarHidden(true).navigationBarBackButtonHidden(true).ignoresSafeArea()
    }
}

struct FavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteView()
    }
}
