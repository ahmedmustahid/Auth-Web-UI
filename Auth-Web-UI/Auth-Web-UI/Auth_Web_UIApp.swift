//
//  Auth_Web_UIApp.swift
//  Auth-Web-UI
//
//  Created by Ahmed on 2021/08/17.
//

import SwiftUI
import Amplify
import AmplifyPlugins

@main
struct Auth_Web_UIApp: App {
    
    @ObservedObject var auth = AuthService()
    
    init(){
        configureAmplify()
        auth.checkSessionStatus()
        auth.observeAuthEvents()
    }
    
    
    var body: some Scene {
        WindowGroup {
            
            if auth.isSignedIn {
                SessionView()
                    .environmentObject(auth)
            } else {
                SignInView()
                    .environmentObject(auth)
            }
            //ContentView()
        }
    }
    
    func configureAmplify(){
        do{
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("configured successfully")
        } catch{
            print("Could not configure ",error)
        }
    }
}
