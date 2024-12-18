//
//  WeeklyWorkoutView.swift
//  fit drive
//

import SwiftUI

struct WeeklyWorkoutView: View {
    let weeklyWorkouts: [String: [Workout]] = [
        "Monday": chestWorkouts,
        "Tuesday": backWorkouts,
        "Wednesday": bicepsWorkouts,
        "Thursday": tricepsWorkouts,
        "Friday": legWorkouts,
        "Saturday": absWorkouts,
        "Sunday": coreWorkouts
    ]
        
    private let weekdayOrder: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(weekdayOrder, id: \.self) { day in
                    Section(header: Text(day).font(.headline)) {
                        ForEach(weeklyWorkouts[day] ?? []) { workout in
                            HStack {
                                Text(workout.name)
                                    .font(.subheadline)
                                Spacer()
                                Text(workout.status == .completed ? "✅" : "⏳")
                                    .foregroundColor(workout.status == .completed ? .green : .orange)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Weekly Workouts")
        }
    }
}
