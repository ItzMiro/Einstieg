//
//  ContentView.swift
//  Einstieg
//
//  Created by Miro Mathys on 23.12.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel =
        ViewModel()
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(viewModel.topics, id: \.self) { topic in
                    NavigationLink(topic.title) {
                        DetailView(topic: topic)
                    }
                }
                .navigationTitle("Swift Lernen")
            }
        }
        

    }
}

#Preview {
    ContentView()
}

//Tutorial: https://www.youtube.com/watch?v=mTe-2J8ptSU&t=1225s
