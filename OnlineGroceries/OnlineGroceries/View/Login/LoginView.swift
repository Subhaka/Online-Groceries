//
//  LoginView.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-13.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var loginVM = MainViewModel.shared;
    
    var body: some View {
        
            ZStack{
                
                Image("bottom_bg").resizable().scaledToFill().frame(width: .screenWidth, height: .screenHeight)
                
                VStack{
                    
                    Image("color_logo").resizable().scaledToFit().frame(width: 40).padding(.bottom, .screenWidth * 0.12)
                    
                    Text("Loging").font(.system(size: 26,weight: .semibold)).foregroundColor(.primaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).padding(.bottom, 4)
                    
                    Text("Enter your Email and Password").font(.system(size: 16,weight: .semibold)).foregroundColor(.secondaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).padding(.bottom, .screenWidth * 0.1)
                    
                    LineTextField(txt: $loginVM.txtEmail, title: "Email", placeholder: "Enter your Email Address",keyboardType: .emailAddress).padding(.bottom, .screenWidth * 0.07)
                    
                    LineSecureField(txt: $loginVM.txtPassword, isShowPassword: $loginVM.isShowingPassword, title: "Password", placeholder: "Enter your Password").padding(.bottom, .screenWidth * 0.02)
                    
                    Button{
                        
                    }label: {
                        Text("Forgot Password?").foregroundColor(.primaryText).font(.system(size: 14, weight: .medium) )
                    }.frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing).padding(.bottom, .screenWidth * 0.03)
                    
                    NavigationLink{
                        MainTabView()
                    }label: {
                        RoundButton(title: "Log In").padding(.bottom, .screenWidth * 0.05)
                    }
                    
                    NavigationLink{
                        SignUpView()
                    }label: {
                        HStack{
                            Text("Don't have an Account?").foregroundColor(.primaryText).font(.system(size: 14, weight: .semibold) )
                            Text("Sign Up").foregroundColor(.primaryApp).font(.system(size: 14, weight: .semibold) )
                        }
                    }.navigationBarHidden(true).navigationBarBackButtonHidden(true)
                    
                    
                    Spacer()
                }.padding(.top, .topInsets + 64)
                    .padding(.horizontal, 20)
                    .padding(.bottom, .bottomInsets)
                
                
                VStack{

                    HStack{

                        Button{
                            mode.wrappedValue.dismiss()

                        }label: {
                            Image("back").resizable().scaledToFit().frame(width: 20,height: 20)

                        }
                        Spacer()

                    }
                    Spacer()

                }.padding(.top, .topInsets + 6).padding(.horizontal, 3)
                
                
            }.background(Color.white)
            .ignoresSafeArea().background(Color.white).navigationTitle("").navigationBarHidden(true).navigationBarBackButtonHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
