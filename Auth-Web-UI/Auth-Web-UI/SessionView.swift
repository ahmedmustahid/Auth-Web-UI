//
//  SessionView.swift
//  Auth-Web-UI
//
//  Created by Ahmed on 2021/08/17.
//

import SwiftUI

struct SessionView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("You've signed in")
            Spacer()
            Button("Sign Out",action: {})
        }
    }
}

struct SessionView_Previews: PreviewProvider {
    static var previews: some View {
        SessionView()
    }
}
