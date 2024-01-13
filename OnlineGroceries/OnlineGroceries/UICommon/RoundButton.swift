//
//  RoundButton.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-12.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Title";
    var didTap: (()-> ())?
    var body: some View {
        Button{
            didTap?()
            
        }label: {
            Text("\(title)").font(.system(size: 18, weight:.semibold)).foregroundColor(.white).multilineTextAlignment(.center)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
            .background(Color.primaryApp).cornerRadius(20)
        
        
    }
}

struct RoundButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundButton()
    }
}
