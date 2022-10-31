//
//  WaterSchedule.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/30/22.
//

import Foundation

struct WaterSchedule {
    
    typealias ScheduledWatering = (day: Day, time: String, amount: Double)
    
    enum Day {
        case sunday, monday, tuesday, wednesday, thursday, friday, saturday
    }
    
    var wateringSchedule: [ScheduledWatering] = []
}
