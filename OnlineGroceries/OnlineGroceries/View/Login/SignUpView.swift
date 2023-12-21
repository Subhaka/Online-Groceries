//
//  SignUpView.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-18.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var mainVM = MainViewModel.shared;
    var body: some View {
        NavigationView{
            ZStack{
                Image("bottom_bg").resizable().scaledToFill().frame(width: .screenWidth, height: .screenHeight)
                ScrollView{
                    VStack{
                        Image("color_logo").resizable().scaledToFit().frame(width: 40).padding(.bottom, .screenWidth * 0.12)
                        
                        Text("Sign Up").font(.system(size: 26,weight: .semibold)).foregroundColor(.primaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).padding(.bottom, 4)
                        
                        Text("Enter your Username, Email and Password").font(.system(size: 16,weight: .semibold)).foregroundColor(.secondaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).padding(.bottom, .screenWidth * 0.1)
                        
                        LineTextField(txt: $mainVM.txtEmail, title: "Username", placeholder: "Enter your Name",keyboardType: .default).padding(.bottom, .screenWidth * 0.07)
                        
                        
                        LineTextField(txt: $mainVM.txtEmail, title: "Email", placeholder: "Enter your Email Address",keyboardType: .emailAddress).padding(.bottom, .screenWidth * 0.07)
                        
                        LineSecureField(txt: $mainVM.txtPassword, isShowPassword: $mainVM.isShowingPassword, title: "Password", placeholder: "Enter your Password").padding(.bottom, .screenWidth * 0.02)
                        
                        VStack{
                            Text("By continuing you agree to our").font(.system(size: 14,weight: .medium)).foregroundColor(.secondaryText).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            
                            HStack{
                                Text("Terms of Services").font(.system(size: 14,weight: .medium)).foregroundColor(.primaryApp).frame( alignment: .leading)
                                Text("and").font(.system(size: 14,weight: .medium)).foregroundColor(.secondaryText)
                                
                                Text("Privacy Policy").font(.system(size: 14,weight: .medium)).foregroundColor(.primaryApp).frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            }
                        }
                        
                        Button{
                            
                        }label: {
                            Text("Forgot Password?").foregroundColor(.primaryText).font(.system(size: 14, weight: .medium) )
                        }.frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing).padding(.bottom, .screenWidth * 0.03)
                        NavigationLink{
                            LoginView()
                        }label: {
                            RoundButton(title: "Sign Up").padding(.bottom, .screenWidth * 0.05)
                        }
                        
                        
                        NavigationLink{
                            LoginView()
                        }label: {
                            HStack{
                                Text("Already have an Account?").foregroundColor(.primaryText).font(.system(size: 14, weight: .semibold) )
                                Text("Sign In").foregroundColor(.primaryApp).font(.system(size: 14, weight: .semibold) )
                            }
                        }
                        
                    }.padding(.top, .topInsets + 40).padding(.horizontal, 20)
                }
                
                            VStack{
                                HStack{
                                    Button{
                                        mode.wrappedValue.dismiss()
                                    }label: {
                                        Image("back").resizable().scaledToFit().frame(width: 20, height: 20)
                                    }
                                    Spacer()
                                }
                                Spacer()
                
                            }.padding(.top, .topInsets)
            }.ignoresSafeArea()
        }.navigationTitle("").navigationBarHidden(true).navigationBarBackButtonHidden(true)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
