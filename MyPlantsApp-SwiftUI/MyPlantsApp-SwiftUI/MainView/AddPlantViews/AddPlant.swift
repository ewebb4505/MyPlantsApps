//
//  AddPlant.swift
//  MyPlantsApp-SwiftUI
//
//  Created by Evan Webb on 10/30/22.
//

import SwiftUI

struct AddPlant: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var mainViewModel: MainViewModel

    @State var plantName: String = ""
    @State var plantSpecies: String = ""
    @State var initialNotes: String = ""
    @State private var image = UIImage()
    @State private var showSheet = false
    
    @State var isAddPlantFormValid: Bool = true
    @State var plantWasNotAddedSuccessfully: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                VStack {
                    Image(uiImage: self.image)
                            .resizable()
                            .cornerRadius(50)
                            .padding(.all, 4)
                            .frame(width: 100, height: 100)
                            .background(Color.black.opacity(0.2))
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .padding(8)
                    Button(action: {
                        showSheet = true
                    }, label: {
                        Text("Add a photo")
                    })
                }
                TextField("Plant Name", text: $plantName)
                    .textFieldStyle(.roundedBorder)
                TextField("Plant Species", text: $plantSpecies)
                    .textFieldStyle(.roundedBorder)
                VStack(alignment: .leading) {
                    Text("Any inital notes on your new plant?")
                        .font(.headline)
                    TextEditor(text: $initialNotes)
                }
                Spacer()
                Button(action: {
                    if mainViewModel.addPlant(name: plantName, species: plantSpecies, waterSchedule: nil) {
                        dismiss()
                    } else {
                        plantWasNotAddedSuccessfully = true
                    }
                }, label: {
                    Text("Submit")
                })
                .buttonStyle(.borderedProminent)
            }.padding()
            
            .navigationTitle("Add a Plant!")
            .navigationBarItems(leading: Button("Cancel", action: { dismiss() }))
            .sheet(isPresented: $showSheet) {
                    ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
            }
        }
    }
}

struct AddPlant_Previews: PreviewProvider {
    static var previews: some View {
        AddPlant()
    }
}
