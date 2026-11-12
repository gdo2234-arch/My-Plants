//
//  SetReminderView.swift
//  My Plants
//
//  Created by Ghaida on 30/05/1448 AH.
//

import SwiftUI
struct SetReminderView: View {
    
    @State private var plantName = ""
    var body: some View {
        Form {
                Section {
                    HStack{
                    Text("Plant Name")
                    TextField("Pothos", text: $plantName)
                }
            }
            Section {
                Label("Room", systemImage: "location")
                    
                Label("Light", systemImage: "sun.max")
            }
            
            Section {
                Label("Watering Days", systemImage: "drop")

                Label("Water", systemImage: "drop")

            }
        }
    }
}

#Preview {
    SetReminderView()
}
