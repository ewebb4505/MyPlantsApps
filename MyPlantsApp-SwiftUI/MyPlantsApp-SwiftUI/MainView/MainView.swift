//
//  MainView.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/23/22.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    @State private var showingAddPlantSheet = false
    
    var body: some View {
        NavigationView{
            VStack {
                if !viewModel.plants.isEmpty {
                    Divider()
                    Spacer()
                        .frame(height: 16)
                    ScrollView {
                        VStack(spacing: 32.0) {
                            PlantsToBeWatered(myPlants: $viewModel.plants)
                            MyPlantsList(myPlants: $viewModel.plants)
                        }
                    }
                } else {
                    
                }
            }
            .navigationTitle("My Plants")
            .toolbar{
                Button(action: {
                    //here I need to load the addPlant view with a modal.
                    self.showingAddPlantSheet.toggle()
                }, label: {
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
            .sheet(isPresented: $showingAddPlantSheet) {
                AddPlant()
                    .environmentObject(viewModel)
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
