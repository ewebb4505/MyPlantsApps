//
//  Plant.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/30/22.
//

import Foundation

struct Plant: Identifiable {
    
    var id = UUID()
    var name: String
    var species: String
    var waterSchedule: WaterSchedule?
    var plantNames: [PlantNote] = []
    
    
    init(name: String, species: String, waterSchedule: WaterSchedule?){
        self.name = name
        self.species = species
        self.waterSchedule = waterSchedule
    }
}
