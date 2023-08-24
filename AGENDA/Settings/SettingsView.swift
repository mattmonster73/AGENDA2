//
//  SettingsView.swift
//  AGENDA
//
//  Created by Emeka Martin Eke on 31/05/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {

        NavigationStack {
            
            Form {
                
               
                Section(header: Text("General")){
                    Text("Language")
                    Text("Theme")
                    Text("Notifications")
                    Text("iCloud Sync")
                    Text("Change app icon")
                    
                }
                
                Section(header: Text("Support")){
                    Text("Agenda for watchOS")
                    Text("Privacy Policy")
                    Text("Terms & Condition")
                    Text("Impressum")
                    Text("About")
                    
                }
                
                Section {
                    Text("Help")
                    Text("Send Feedback")
                    Text("Rate the AGENDA app")
                }
                
              

                
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
