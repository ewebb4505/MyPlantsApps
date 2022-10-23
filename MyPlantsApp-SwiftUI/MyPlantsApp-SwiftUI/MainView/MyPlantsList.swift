//
//  MyPlantsList.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/23/22.
//

import SwiftUI

struct MyPlantsList: View {
    var plants: [String]
    var body: some View {
        VStack {
            HStack {
                Text("Plants 🌵")
                    .font(.system(size: 22))
                    .fontWeight(.semibold)
                Spacer()
                Text("Total Plants: \(plants.count)")
            }.padding(.horizontal)
            Divider()
            VStack {
                ForEach(self.plants, id: \.self) { _ in
                    NavigationLink(destination: {
                        Text("Hello")
                    }, label: {
                        PlantListView()
                    })
                }.buttonStyle(.plain)
            }
        }
    }
}

struct MyPlantsList_Previews: PreviewProvider {
    static var previews: some View {
        MyPlantsList(plants:[
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
