//
//  LoginView.swift
//  HelloWorldProject
//
//  Created by Danielle Gomes on 2020-04-21.
//  Copyright © 2020 Danielle Gomes. All rights reserved.
//

import SwiftUI

struct LoginView: View {

    var body: some View {
        NavigationView {
            VStack(spacing: 30){
                Text("Adventure: Hello World!")
                
                NavigationLink(destination: SignInView()) {
                    Text("SIGN IN")
                    .foregroundColor(Color.white)
                    .font(Font.custom("HelveticaNeue-Medium", size: 16))
                }
                .frame(width: 105.0, height: 45.0)
                .background(Color.init(UIColor.brown))
                .cornerRadius(20)
                
                NavigationLink(destination: SignUpView()) {
                    Text("SIGN UP")
                    .foregroundColor(Color.white)
                    .font(Font.custom("HelveticaNeue-Medium", size: 16))
                }
                .frame(width: 105.0, height: 45.0)
                .background(Color.init(UIColor.brown))
                .cornerRadius(20)
                
                Divider()
                    .padding(.horizontal, 45)
                    .foregroundColor(Color.init(UIColor.brown))
                
                VStack(spacing: 10) {
                    Text("or use social login")
                        .font(Font.custom("Helvetica", size: 12))
                        .foregroundColor(Color.gray)
                    
                    HStack(spacing: 10){
                        CustomFacebookButton().frame(width: 45, height: 45)
                        CustomGoogleButton().frame(width: 45, height: 45)
                    }
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
