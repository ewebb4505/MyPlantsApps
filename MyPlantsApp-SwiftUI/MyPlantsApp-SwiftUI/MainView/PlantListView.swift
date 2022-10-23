//
//  PlantListView.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/23/22.
//

import SwiftUI

struct PlantListView: View {
    var body: some View {
        VStack {
            HStack(spacing: 14.0) {
                Image(systemName: "trash")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("Name of Plant")
                    Text("Species")
                        .font(Font.caption)
                        .fontWeight(.light)
                }
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding(.vertical, 6.0)
            .padding(.leading, 16.0)
            .padding(.trailing, 16.0)
            Divider()
                .frame(height: 1)
                .offset(x: 16, y: 0)
        }
        
    }
}

struct PlantListView_Previews: PreviewProvider {
    static var previews: some View {
        PlantListView()
    }
}
