//
//  MainView.swift
//  Mood
//
//  Created by John on 6/11/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            JournalTab()
            AddTab()
            TimelineTab()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct JournalTab: View {
    var body: some View {
        Text("Tab Content hi").tabItem { Text("Journal"); Image(systemName: "book.closed.fill") }.tag(1)
    }
}

struct AddTab: View {
    var body: some View {
        Text("Tab Content 2").tabItem { Text("Add");
            Image(systemName: "plus.square.fill")
        }.tag(2)
    }
}

struct TimelineTab: View {
    var body: some View {
        Text("Tab Content 3").tabItem { Text("Timeline");
            Image(systemName: "pencil.and.outline")
        }.tag(2)
    }
}
