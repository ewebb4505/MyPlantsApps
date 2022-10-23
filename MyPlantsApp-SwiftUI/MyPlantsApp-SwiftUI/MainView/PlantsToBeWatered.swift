//
//  PlantsToBeWatered.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/23/22.
//

import SwiftUI

struct PlantsToBeWatered: View {
    var plants: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Next To Be Watered")
                .font(.system(size: 22))
                .fontWeight(.semibold)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 16.0) {
                    ForEach(self.plants, id: \.self) { _ in
                                PlantToBeWateredView()
                    }
                }
                
            }
        }.padding(.leading)
    }
}

struct PlantsToBeWatered_Previews: PreviewProvider {
    static var previews: some View {
        PlantsToBeWatered(plants: [
            "Plant1",
            "Plant2",
            "Plant3",
            "Plant4",
            "Plant5",
            "Plant6",
            "Plant7",
            "Plant8"
        ])
    }
}
