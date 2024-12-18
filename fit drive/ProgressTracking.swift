//
//  ProgressTracking.swift
//  fit drive
//

import Foundation

struct ProgressTracking {
    var date: Date
    var workouts: [Workout]
    
    static func createProgress(for date: Date, workouts: [Workout]) -> ProgressTracking {
        return ProgressTracking(date: date, workouts: workouts)
    }
}
