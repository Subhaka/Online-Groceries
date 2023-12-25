//
//  CategoryCall.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-21.
//

import SwiftUI

struct CategoryCall: View {
    @State var color:Color = Color.yellow
    let item: CategoryStructure
    var didTapCat: ( ()->())?
    var body: some View {
        Button(action: {
            didTapCat?() 
        }) {
            HStack {
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                
                Spacer()
                
                Text(item.name)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            }
            .padding(15)
            .frame(width: 250, height: 100)
            .background(Color(hex: item.color).opacity(0.3))
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .strokeBorder(Color.black, lineWidth: 1)
            )
        }
    }
}

struct CategoryCall_Previews: PreviewProvider {
    static let sampleItem = CategoryStructure(id: "1",name: "Fruits and Vegitables", image: "fruitveg", color: "00FF00")
    static var previews: some View {
        CategoryCall(item: sampleItem)
    }
}
