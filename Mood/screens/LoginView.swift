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
        VStack{
            Image(systemName: "book.closed.fill")
                .resizable()
                .frame(width: 60, height: 70)
            
            VStack {
                HStack{
                    
                    Text("Login")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    
                }
                .padding(.top, 40)
                
                VStack{
                    
                    HStack(spacing: 15){
                        Image(systemName: "envelope.fill")
                        
                        TextField("Email", text: $email)
                    }
                    .padding(.horizontal)
                    .padding(.top, 40)
                }
                
                VStack{
                    
                    HStack(spacing: 15){
                        Image(systemName: "eye.slash.fill")
                        
                        SecureField("Password", text: $password)
                    }
                    .padding(.horizontal)
                    .padding(.top, 30)
                    
                    HStack{
                        Button(action: {
                            sessionStore.signIn(email: email, password: password)
                        }) {
                            Text("Sign In")
                                .font(.title2)
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        }
                        
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        
                        Button(action: {
                            sessionStore.signUp(email: email, password: password)
                        }) {
                            Text("Register")
                                .font(.title2)
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 30)
                }
            }
            .padding()
            .padding(.bottom, 65)
            .padding(.horizontal, 20)
            }
        }
        
        
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
