//
//  DetailView.swift
//  Einstieg
//
//  Created by Miro Mathys on 23.12.2024.
//

import SwiftUI

struct DetailView: View {
    
    let topic: Topic
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading,
                   spacing: 12) {
                Text("Erklärung")
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color.gray)
                
                Text(topic.explanation)
                
                Text("Code-Beispiel")
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color.gray)
                
                Text(topic.codeSnippet)
                    .font(.system(size: 14,
                                  design: .monospaced))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(.gray.opacity(0.2))
                    .clipShape(RoundedRectangle (cornerRadius: 8))
            }
                   .padding()
        }
    }
}

#Preview {
    DetailView(topic: Topic(title: "Konstante", explanation: "Speichert Daten", codeSnippet: "let variable: String"))
}

