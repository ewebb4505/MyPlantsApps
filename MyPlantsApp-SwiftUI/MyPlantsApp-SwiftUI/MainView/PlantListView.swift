//
//  PlantListView.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/23/22.
//

import SwiftUI

struct PlantListView: View {
    var body: some View {
        HStack {
            Image(systemName: "trash")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            VStack {
                Text("Name of Plant")
                Text("Species")
            }
            Spacer()
            //Image(systemName: "chevron.right")
        }
    }
}

struct PlantListView_Previews: PreviewProvider {
    static var previews: some View {
        PlantListView()
    }
}
