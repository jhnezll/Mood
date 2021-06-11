//
//  MainView.swift
//  Mood
//
//  Created by John on 6/11/21.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var sessionStore = SessionStore()
    
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            Button(action: {
                sessionStore.signOut()
            }, label: {
                Text("Sign Out")
            })
            .tabItem { Text("Journal"); Image(systemName: "book.closed.fill") }.tag(1)
            
            
            
            Text("Tab Content 2").tabItem { Text("Add");
                Image(systemName: "plus.square.fill")
            }.tag(2)
            Text("Tab Content 3").tabItem { Text("Timeline");
                Image(systemName: "pencil.and.outline")
            }.tag(3)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

