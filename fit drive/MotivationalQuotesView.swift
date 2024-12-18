import SwiftUI

struct MotivationalQuotesView: View {
    let quotes = [
        "Push yourself, no one else is going to do it for you.",
        "The only bad workout is the one that didn’t happen.",
        "Success starts with self-discipline.",
        "Don’t stop when you’re tired, stop when you’re done.",
        "Believe in yourself and all that you are."
    ]

    @State private var currentQuote: String = "Tap for a motivational quote!"

    var body: some View {
        VStack {
            Spacer()
            Text(currentQuote)
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            Button(action: {
                currentQuote = quotes.randomElement() ?? "Keep going!"
            }) {
                Text("Get New Quote")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .navigationTitle("Motivation")
    }
}
