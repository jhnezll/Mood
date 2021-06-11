//
//  ContentView.swift
//  Mood
//
//  Created by John on 6/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var sessionStore = SessionStore()
    
    init() {
        sessionStore.listen()
    }
    
    var body: some View {
        MainView()
            .fullScreenCover(isPresented: $sessionStore.isAnon, content: {
                LoginView()
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

