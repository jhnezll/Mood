//
//  MoodApp.swift
//  Mood
//
//  Created by John on 6/10/21.
//

import SwiftUI
import Firebase

@main
struct MoodApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

