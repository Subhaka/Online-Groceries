//
//  SearchTextField.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-21.
//

import SwiftUI

struct SearchTextField: View {
    @State var placeholder: String = "Placeholder"
    @Binding var txt: String
    var body: some View {
        HStack{
            Image(systemName:"magnifyingglass").resizable().scaledToFit().frame(width: 20, height: 20)
            TextField(placeholder, text: $txt)
                .font(.system(size: 17,weight: .regular)).autocapitalization(.none).disableAutocorrection(true).frame(minWidth: 0, maxWidth: .infinity)
            
        }.frame(height: 30)
            .background(Color(hex: "F2F3F2")).padding(15).cornerRadius(16)
    }
}

struct SearchTextField_Previews: PreviewProvider {
    @State static var txt: String = ""
    static var previews: some View {
        SearchTextField(placeholder: "Search Store", txt: $txt).padding(15)
    }
}
