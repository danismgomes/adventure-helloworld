//
//  AppRootView.swift
//  HelloWorldProject
//
//  Created by Danielle Gomes on 2020-04-21.
//  Copyright © 2020 Danielle Gomes. All rights reserved.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct AppRootView: View {
    
    @ObservedObject var session : FirebaseSession
    
    func getUser () {
        session.listen()
    }

    
    var body: some View {
        Group {
            if session.session != nil {
                MainView()
            } else {
                LoginView()
            }
        }.onAppear(perform: getUser)
    
    }
}
