//
//  Topic.swift
//  Einstieg
//
//  Created by Miro Mathys on 23.12.2024.
//

import Foundation

struct Topic: Decodable, Hashable {
    
    let title: String
    let explanation: String
    let codeSnippet: String
}
//Hier wird der Jason ausgelesen
