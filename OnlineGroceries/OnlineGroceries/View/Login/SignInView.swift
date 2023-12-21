//
//  SignInView.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-12.
//

import SwiftUI
import CountryPicker

struct SignInView: View {
    @State var txtMobile: String = "";
    @State var isShowPicker: Bool = false
    @State var countryObj: Country?
    var body: some View {
        NavigationView{
            ZStack{
                Image("bottom_bg").resizable().scaledToFill().frame(width: .screenWidth, height: .screenHeight)
                VStack{

                    Image("sign_in_top").resizable().scaledToFill().frame(width: .screenWidth, height: .screenWidth)
                    Spacer();

                }

                ScrollView{

                    VStack{
                        Text("Get your groceries\nwith nectar").font(.system(size: 26, weight: .bold)).foregroundColor(.primaryText).multilineTextAlignment(.leading).padding(.bottom, 25)
                        HStack{

                            Button{
                                isShowPicker = true;
                            }label: {
                                //                            Image("")
                                if let countryObj = countryObj{

                                    Text("\(countryObj.isoCode.getFlag())").font(.system(size: 25, weight: .medium)).foregroundColor(.primaryText)

                                    Text("+\(countryObj.phoneCode)").font(.system(size: 18, weight: .medium)).foregroundColor(.primaryText)
                                }
                            }

                            TextField("Enter Mobile",text: $txtMobile).frame(minWidth: 0, maxWidth: .infinity)

                        }

                        NavigationLink{
                            LoginView().navigationBarBackButtonHidden(true)
                        }label: {
                            Text("Continue with Email Sign In").font(.system(size: 18, weight: .semibold)).foregroundColor(.white).multilineTextAlignment(.center)
                        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60).background(Color(hex: "5383EC" )).cornerRadius(20).padding(.bottom, 15)

                        NavigationLink{
                            SignUpView().navigationBarBackButtonHidden(true)
                        }label: {
                            Text("Continue with Email Sign Up").font(.system(size: 18, weight: .semibold)).foregroundColor(.white).multilineTextAlignment(.center)
                        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60).background( Color.primaryApp).cornerRadius(20).padding(.bottom, 15)

                        Divider().padding(.bottom, 25)
                        Text("Or connect with social media").font(.system(size: 14, weight: .bold)).foregroundColor(.textTitle).multilineTextAlignment(.center).frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                            .padding(.bottom, 25)


                        Button{

                        }label: {
                            Image("google_logo").resizable().frame(width: 20, height: 20)
                            Text("Continue with Google").font(.system(size: 18, weight: .semibold)).foregroundColor(.white).multilineTextAlignment(.center)
                        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60).background(Color(hex: "5383EC" )).cornerRadius(20).padding(.bottom, 15)

                        Button{

                        }label: {
                            Image("fb_logo").resizable().frame(width: 15, height: 25)
                            Text("Continue with Facebook").font(.system(size: 18, weight: .semibold)).foregroundColor(.white).multilineTextAlignment(.center)
                        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60).background(Color(hex: "4A66AC" )).cornerRadius(20)

                    }.padding(.horizontal, 20)
                        .frame(width: .screenWidth, alignment: .leading)
                        .padding(.top, .topInsets + .screenWidth * 0.6)


                }
                
                
            }.onAppear{
                self.countryObj = Country(phoneCode: "91", isoCode:"IN")
            }
            .sheet(isPresented: $isShowPicker, content: {
                CountryPickerUI(country: $countryObj)
            })
            .ignoresSafeArea()
        }.navigationTitle("").navigationBarHidden(true).navigationBarBackButtonHidden(true)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
