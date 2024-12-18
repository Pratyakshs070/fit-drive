import SwiftUI

struct ProgressTrackingView: View {
    @State private var progress: [String: [String:Bool]]  = [
        "Monday": ["Bench Press": false, "Incline Dumbbell Press" : false, "Push-Ups" : false],
        "Tuesday": ["Pull-Ups" : false, "Deadlifts" : false, "Barbell Rows" : false],
        "Wednesday": ["Bicep Curls" : false, "Hammer Curls" : false, "Concentration Curls": false],
        "Thursday": ["Tricep Dips" : false, "Tricep Extensions" : false, "Close-Grip Bench Press" : false],
        "Friday": ["Squats" : false, "Lunges" : false, "Leg Press" : false],
        "Saturday": ["Plank" : false, "Crunches" : false, "Russian Twists" : false],
        "Sunday": ["Running" : false, "Cycling" : false, "Jump Rope" : false]
        
    ]
    
    private let weekdayOrder: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    

    var body: some View {
          NavigationView {
              List {
                  ForEach(weekdayOrder, id: \.self) { day in
                      if let workouts = progress[day] {
                          Section(header: Text(day).font(.headline)) {
                              ForEach(Array(workouts.keys), id: \.self) { workout in
                                  Toggle(isOn: Binding(
                                      get: { progress[day]?[workout] ?? false },
                                      set: { newValue in
                                          progress[day]?[workout] = newValue
                                      }
                                  )) {
                                      Text(workout)
                                  }
                              }
                          }
                      }
                  }
              }
              .listStyle(InsetGroupedListStyle())
              .navigationTitle("Progress Tracking")
          }
      }
  }
