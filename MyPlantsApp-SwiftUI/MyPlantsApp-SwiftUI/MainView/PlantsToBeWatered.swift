//
//  PlantsToBeWatered.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/23/22.
//

import SwiftUI

struct PlantsToBeWatered: View {
    @Binding var myPlants: [Plant]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Next To Be Watered")
                .font(.system(size: 22))
                .fontWeight(.semibold)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 16.0) {
                    ForEach(self.myPlants) { _ in
                                PlantToBeWateredView()
                    }
                }
                
            }
        }.padding(.leading)
    }
}

struct PlantsToBeWatered_Previews: PreviewProvider {
    static var previews: some View {
        PlantsToBeWatered(myPlants: .constant([
            Plant(name: "testing1", species: "testing1 species", waterSchedule: .init()),
            Plant(name: "testing2", species: "testing2 species", waterSchedule: .init()),
            Plant(name: "testing3", species: "testing3 species", waterSchedule: .init()),
            Plant(name: "testing4", species: "testing4 species", waterSchedule: .init()),
            Plant(name: "testing5", species: "testing5 species", waterSchedule: .init()),
            Plant(name: "testing6", species: "testing6 species", waterSchedule: .init()),
            Plant(name: "testing7", species: "testing7 species", waterSchedule: .init()),
            Plant(name: "testing8", species: "testing8 species", waterSchedule: .init())
        ]))
    }
}
