//
//  MainView.swift
//  HelloWorldProject
//
//  Created by Danielle Gomes on 2020-04-21.
//  Copyright © 2020 Danielle Gomes. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var session: FirebaseSession
    
    var body: some View {
        TabView {
            Text("Hello World!")
                .tabItem {Text("HW")}
            
            Button(action: session.logOut)  {
            Text("Logout")
                .foregroundColor(Color.white)
                .font(Font.custom("HelveticaNeue-Medium", size: 20))
            }
            .frame(width: 105.0, height: 45.0)
            .background(Color.init(UIColor.brown))
            .cornerRadius(20)
            .tabItem {Text("LogOut")}
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
