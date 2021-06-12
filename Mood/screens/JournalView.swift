//
//  JournalView.swift
//  Mood
//
//  Created by John on 6/12/21.
//

import SwiftUI

struct JournalView: View {
    
    @ObservedObject var viewModel = JournalViewModel()
    
    init() {
        viewModel.fetchData()
    }
    
    var body: some View {
        NavigationView {
            List(viewModel.entries) { entry in
                HStack {
                    Text(entry.title)
                    Spacer()
                }
            }
            .navigationBarTitle("Entries")
        }
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
