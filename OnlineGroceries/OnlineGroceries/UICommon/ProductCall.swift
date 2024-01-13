//
//  ProductCall.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-21.
//

import SwiftUI

struct ProductCall: View {
    let item: GroceryStructure
    @State private var showingProductDetails = false
    var didAddCart: ( ()->())?
    var body: some View {
        VStack{
            Image(item.image).resizable().scaledToFit().frame(width: 100, height: 100)
            
            Spacer()
            
            Text(item.name).font(.system(size: 16, weight: .bold)).foregroundColor(.primaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Text("\(item.unitValue) \(item.unitName), price").font(.system(size: 14, weight: .bold)).foregroundColor(.secondaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            HStack{
                Text("$\(item.formattedOfferPrice)").font(.system(size: 18, weight: .semibold)).foregroundColor(.primaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Spacer()
                
                Button{
                    didAddCart?()
                    showingProductDetails = true
                    
                }label: {
                    Image(systemName: "plus").resizable().scaledToFit().frame(width: 15, height: 15).foregroundColor(Color.white)
                } .frame(width: 40, height: 40)
                    .background(Color.primaryApp).cornerRadius(15)
                
            }
            //            Text("Valid till \(item.endDate)").font(.system(size: 12,weight: .medium))
            
            
        }.padding(20)
            .frame(width: 180, height: 230).overlay{
                RoundedRectangle(cornerRadius: 16).stroke(Color.placeholder.opacity(0.5), lineWidth: 1)
            }
        //        .background(Color(hex: "\(item.color)").opacity(0.2))
    }
}

struct ProductCall_Previews: PreviewProvider {
    static let sampleItem = GroceryStructure(id: 1, offerPrice: 4.22, startDate: "23-04-2023", endDate: "23-05-2023", brandId: 100, name: "Banama", details: "Rich in Antioxidants", unitName: "pcs", unitValue: 5, nutritionWeight: "150g", price: 6.22, image: "banana", color: "yellow", categoryName:"Fruits & Vegitables", divisionName: "ExclusiveOffer", nutrition: Nutrition(carbohydrates: 2, fats: 5, lipids: 10, protein: 8, vitamin_A: 4, vitamin_C: 12, vitamin_D: 7))
    static var previews: some View {
        ProductCall(item: sampleItem)
    }
}
