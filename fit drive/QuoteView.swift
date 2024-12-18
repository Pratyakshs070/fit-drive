//
//  QuoteView.swift
//  fit drive
//

import SwiftUI

struct QuoteView: View {
    let motivationalQuotes = [
        "Push yourself, no one else is going to do it for you.",
        "The only bad workout is the one that didn’t happen.",
        "Success starts with self-discipline.",
        "Don’t stop when you’re tired, stop when you’re done.",
        "Believe in yourself and all that you are."
    ]
    
    @State private var currentQuote = "Tap for a motivational quote!"
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(currentQuote)
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
                .accessibilityLabel("Motivational quote")
                .accessibilityValue(currentQuote)
                .accessibilityHint("This is a motivational quote. Tap the button below to get a new one.")
            
            Spacer()
            
            Button(action: {
                // Randomly change the quote
                currentQuote = motivationalQuotes.randomElement() ?? "Keep going!"
            }) {
                Text("Get New Quote")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .accessibilityLabel("Get new motivational quote button")
                    .accessibilityHint("Tap to get a new motivational quote.")
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Motivational Quotes")
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
