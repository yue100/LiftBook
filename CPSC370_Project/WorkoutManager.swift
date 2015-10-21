//
//  WorkoutManager.swift
//  LiftBook
//
//  Created by Jiamo Yue
//  Copyright © 2015 Jiamo Yue. All rights reserved.
//

import UIKit

var workMgr: WorkoutManager = WorkoutManager()

struct workout{
    var date = "NULL"
    var workoutType = "NULL"
    var muscleGroup = "NULL"
    var numSets = "NULL";
}

class WorkoutManager: NSObject {
    
    var workouts = [workout]()
    
    func addWorkout(date: String, workoutType: String, muscleGroup: String, numSets: String){
        workouts.append(workout(date: date, workoutType: workoutType, muscleGroup: muscleGroup, numSets: numSets))
    }
    
    
}
