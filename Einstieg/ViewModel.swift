//
//  ViewModel.swift
//  Einstieg
//
//  Created by Miro Mathys on 23.12.2024.
//

import Foundation

class ViewModel: ObservableObject {
    
    let topics: [Topic]
    
    
    init() {
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
            topics = []
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            topics = try JSONDecoder().decode([Topic].self, from: data)
        } catch {
            print("Fehler beim Laden des Inhaltes: \(error)")
            topics = []
        }
    }
}

//guard ist gegenteil von if els also wenn true geht es weiter
