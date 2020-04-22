//
//  SignInView.swift
//  HelloWorldProject
//
//  Created by Danielle Gomes on 2020-04-21.
//  Copyright © 2020 Danielle Gomes. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @EnvironmentObject var session: FirebaseSession
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30){
                Text("Adventure: Hello World!")
                VStack(spacing: 20){
                    TextField("E-mail" , text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 45)
                        .font(Font.custom("Helvetica", size: 12))
                    TextField("Password" , text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 45)
                        .font(Font.custom("Helvetica", size: 12))
                }
                Button(action: logIn){
                    Text("SIGN IN")
                        .foregroundColor(Color.white)
                        .font(Font.custom("HelveticaNeue-Medium", size: 16))
                }
                .frame(width: 105.0, height: 45.0)
                .background(Color.init(UIColor.brown))
                .cornerRadius(20)
            }
        }
    }
    
    //MARK: Functions
    func logIn() {
        session.logIn(email: email, password: password) { (result, error) in
            if error != nil {
                print("Error")
            } else {
                self.email = ""
                self.password = ""
            }
        }
    }
}
