//
//  MainView.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/23/22.
//

import SwiftUI

struct MainView: View {
    var plants = [  "Plant1",
                    "Plant2",
                    "Plant3",
                    "Plant4",
                    "Plant5",
                    "Plant6",
                    "Plant7",
                    "Plant8",
                    "Plant9"]
    
    var body: some View {
        NavigationView{
            VStack {
                Divider()
                Spacer()
                    .frame(height: 16)
                ScrollView {
                    VStack(spacing: 32.0) {
                        PlantsToBeWatered(plants: plants)
                        MyPlantsList(plants: plants)
                    }
                }
            }
            .navigationTitle("My Plants")
            .toolbar{
                Button(action: {}, label: {
                    HStack {
                        Image(systemName: "plus")
                            .imageScale(.medium)
                        Text("Plant")
                    }
                })
                .tint(.green)
                .buttonStyle(.borderedProminent)
                .clipShape(Capsule())
            }
        }
        //this fixes the constraints problem I've been having
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
