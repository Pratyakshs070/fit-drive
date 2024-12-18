import SwiftUI

struct WeeklyCalendarView: View {
    private let weeklyWorkouts: [String: [String]] = [
        "Monday": ["Bench Press", "Incline Dumbbell Press", "Push-Ups"],
        "Tuesday": ["Pull-Ups", "Deadlifts", "Barbell Rows"],
        "Wednesday": ["Bicep Curls", "Hammer Curls", "Concentration Curls"],
        "Thursday": ["Tricep Dips", "Tricep Extensions", "Close-Grip Bench Press"],
        "Friday": ["Squats", "Lunges", "Leg Press"],
        "Saturday": ["Plank", "Crunches", "Russian Twists"],
        "Sunday": ["Running", "Cycling", "Jump Rope"]
    ]
    
    private let weekdayOrder: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

    var body: some View {
        NavigationView {
            List {
                ForEach(weekdayOrder, id: \.self) { day in
                    if let workouts = weeklyWorkouts[day] {
                        Section(header: Text(day)) {
                            ForEach(workouts, id: \.self) { workout in
                                Text(workout)
                            }
                        }
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Weekly Workouts")
        }
    }
}
