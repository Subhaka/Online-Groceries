//
//  LineTextField.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-13.
//

import SwiftUI

struct LineTextField: View {
    @Binding var txt: String
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    @State var keyboardType: UIKeyboardType = .default
    @State var isPassword: Bool = false
    var body: some View {
        VStack{
            Text(title).font(.system(size: 16,weight: .semibold)).foregroundColor(.textTitle).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).padding(.bottom, 15)
            if(isPassword){
                SecureField(placeholder, text: $txt).keyboardType(keyboardType)
            }else{
                TextField(placeholder, text: $txt).keyboardType(keyboardType)
            }
            
            Divider()
        }
        
    }
}

struct LineSecureField: View {
    @Binding var txt: String
    @Binding var isShowPassword: Bool
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    
    var body: some View {
        VStack{
            Text(title).font(.system(size: 16,weight: .semibold)).foregroundColor(.textTitle).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).padding(.bottom, 15)
            if(isShowPassword){
                TextField(placeholder, text: $txt).modifier(ShowButton(isShow: $isShowPassword))
            }else{
                
                SecureField(placeholder, text: $txt) .modifier(ShowButton(isShow: $isShowPassword))
            }
            
            Divider()
        }
        
    }
}
