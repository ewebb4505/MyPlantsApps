//
//  PlantToBeWateredView.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/23/22.
//

import SwiftUI

struct PlantToBeWateredView: View {
    var body: some View {
        VStack {
            Image(systemName: "trash")
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 75)
                .clipShape(Circle())
            VStack {
                Text("Plant Name")
                Text("00.00 mL")
                    .font(Font.caption)
                    .fontWeight(.light)
            }
            Button("Water Me", action: {
                print("pressed water me")
            })
            .buttonStyle(.bordered)
            .controlSize(.mini)
        }
    }
}

struct PlantToBeWateredView_Previews: PreviewProvider {
    static var previews: some View {
        PlantToBeWateredView()
    }
}
