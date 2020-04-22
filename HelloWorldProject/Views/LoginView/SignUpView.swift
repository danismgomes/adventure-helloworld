//
//  SignUpView.swift
//  HelloWorldProject
//
//  Created by Danielle Gomes on 2020-04-21.
//  Copyright © 2020 Danielle Gomes. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
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
                    TextField("Confirm Password" , text: $confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 45)
                    .font(Font.custom("Helvetica", size: 12))
                }
                
                Button(action: signUp) {
                    Text("Sign Up")
                        .foregroundColor(Color.white)
                        .font(Font.custom("HelveticaNeue-Medium", size: 16))
                }
                .frame(width: 105.0, height: 45.0)
                .background(Color.init(UIColor.brown))
                .cornerRadius(20)
                
            }
        }
    }
    
    func signUp() {
        if !email.isEmpty && !password.isEmpty {
            session.signUp(email: email, password: password) { (result, error) in
                if error != nil {
                    print("Error")
                } else {
                    self.email = ""
                    self.password = ""
                }
            }
        }
    }
}
