//
//  LoginView.swift
//  Mood
//
//  Created by John on 6/11/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    @ObservedObject var sessionStore = SessionStore()
    
    var body: some View {
        NavigationView {
            VStack{
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    sessionStore.signIn(email: email, password: password)
                }, label: {
                    Text("Login")
                })
                
                Button(action: {
                    sessionStore.signUp(email: email, password: password)
                }, label: {
                    Text("Register")
                })
            }
            .navigationBarTitle("Mood")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
