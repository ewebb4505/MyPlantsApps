//
//  MainView.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/23/22.
//

import SwiftUI

struct MainView: View {
    var plants = ["Plant1",
                    "Plant2",
                    "Plant3",
                    "Plant4",
                    "Plant5",
                    "Plant6"]
    
    var body: some View {
        NavigationView{
            GeometryReader { g in
                ScrollView {
                    VStack(spacing: 32.0) {
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack {
                                ForEach(self.plants, id: \.self) { _ in
                                            PlantToBeWateredView()
                                }
                            }
                        }
                        List {
                            ForEach(self.plants, id: \.self) { _ in
                                NavigationLink(destination: {
                                    Text("Hello")
                                }, label: {
                                    PlantListView()
                                })
                                            
                            }
                        }
                        .listStyle(.plain)
                        .frame(width: g.size.width - 5, height: g.size.height - 50, alignment: .center)
                    }
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
