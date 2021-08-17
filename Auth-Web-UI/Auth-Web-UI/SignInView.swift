//
//  SignInView.swift
//  Auth-Web-UI
//
//  Created by Ahmed on 2021/08/17.
//

import SwiftUI

struct SignInView: View {
    @EnvironmentObject var auth: AuthService
    var body: some View {
        Button("Sign In",action: auth.webSignIn)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
