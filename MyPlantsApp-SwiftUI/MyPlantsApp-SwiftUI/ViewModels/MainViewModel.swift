//
//  MainViewModel.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/30/22.
//

import Foundation

class MainViewModel: ObservableObject {
    @Published var plants: [Plant]
    
    init() {
        self.plants = []
    }
    
    func addPlant(name: String, species: String, waterSchedule: WaterSchedule?) -> Bool {
        if isPlantNameUnique(name){
            plants.append(Plant(name: name, species: species, waterSchedule: waterSchedule))
            return true
        }
        return false
    }
    
    
    private func isPlantNameUnique(_ plantName: String) -> Bool {
        if plants.isEmpty {
            return true
        } else {
            return plants.filter({ $0.name == plantName }).isEmpty
        }
    }
    
    private func validNewPlant(_ plant: Plant) -> Bool {
        return true
    }
    
    
}
