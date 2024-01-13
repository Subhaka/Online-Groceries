//
//  AccountView.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2024-01-12.
//

import SwiftUI

struct AccountView: View {
    @EnvironmentObject var authVM: AuthViewModel
    var body: some View {
        
        RoundButton(title: "Sign Out"){
            authVM.signOut()
        }
        if let user = authVM.currentUser{
            Text("\(user.username)")
            
        }
        
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
