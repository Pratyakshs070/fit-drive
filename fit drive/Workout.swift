//
//  Workout.swift
//  fit drive
//

import Foundation

enum WorkoutStatus {
    case notCompleted
    case completed
}

struct Workout: Identifiable {
    let id = UUID()
    let name: String
    var status: WorkoutStatus
}

let chestWorkouts = [
    Workout(name: "Push-Ups", status: .notCompleted),
    Workout(name: "Bench Press", status: .notCompleted),
    Workout(name: "Incline Dumbbell Press", status: .notCompleted)
]

let backWorkouts = [
    Workout(name: "Pull-Ups", status: .notCompleted),
    Workout(name: "Deadlifts", status: .notCompleted),
    Workout(name: "Barbell Rows", status: .notCompleted)
]

let bicepsWorkouts = [
    Workout(name: "Bicep Curls", status: .notCompleted),
    Workout(name: "Hammer Curls", status: .notCompleted),
    Workout(name: "Concentration Curls", status: .notCompleted)
]

let tricepsWorkouts = [
    Workout(name: "Tricep Dips", status: .notCompleted),
    Workout(name: "Skull Crushers", status: .notCompleted),
    Workout(name: "Overhead Extensions", status: .notCompleted)
]

let legWorkouts = [
    Workout(name: "Squats", status: .notCompleted),
    Workout(name: "Lunges", status: .notCompleted),
    Workout(name: "Leg Press", status: .notCompleted)
]

let absWorkouts = [
    Workout(name: "Plank", status: .notCompleted),
    Workout(name: "Russian Twists", status: .notCompleted),
    Workout(name: "Leg Raises", status: .notCompleted)
]

let coreWorkouts = [
    Workout(name: "Mountain Climbers", status: .notCompleted),
    Workout(name: "Bird Dog", status: .notCompleted),
    Workout(name: "Bicycle Crunches", status: .notCompleted)
]
