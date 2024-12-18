import SwiftUI

struct MainTabView: View {
    @State private var showProfile: Bool = false

    var body: some View {
        NavigationView {
            TabView {
                WeeklyCalendarView()
                    .tabItem {
                        Label("Weekly Plan", systemImage: "calendar")
                    }

                MotivationalQuotesView()
                    .tabItem {
                        Label("Motivation", systemImage: "quote.bubble")
                    }

                ProgressTrackingView()
                    .tabItem {
                        Label("Progress", systemImage: "chart.bar")
                    }
            }
            .navigationTitle("FitDrive")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showProfile = true
                    }) {
                        Image(systemName: "person.crop.circle")
                            .font(.title2)
                    }
                }
            }
            .sheet(isPresented: $showProfile) {
                ProfileView()
            }
        }
    }
}
