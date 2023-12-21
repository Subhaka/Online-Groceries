//
//  WelcomeView.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-12.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView{
            ZStack{
                
                Image("welcom_bg").resizable().scaledToFill().frame(width: .screenWidth, height: .screenHeight)
                VStack{
                    Spacer()
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.bottom, 8)
                    Text("Welcome\nto our Store").font(.system(size: 48, weight: .bold)).foregroundColor(.white).multilineTextAlignment(.center)
                    Text("Get your groceries in as fast as one hour").font(.system(size: 16, weight: .medium)).foregroundColor(.white.opacity(0.7)).multilineTextAlignment(.center).padding(.bottom, 20)

                    NavigationLink{
                        SignInView().navigationBarBackButtonHidden(true)
                    }label: {
                        RoundButton(title: "Get Started"){
                            
                        }
                    }

                    Spacer().frame(height: 80)
                }.padding(.horizontal, 20)




            }.ignoresSafeArea()

        }.navigationTitle("").navigationBarBackButtonHidden(true).navigationBarHidden(true)
    }
    
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
