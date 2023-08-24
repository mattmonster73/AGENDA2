//
//  ContentView.swift
//  AGENDA
//
//  Created by Emeka Martin Eke on 31/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
    
        TabView {
            
            NavigationView {
                HomeView()
            }
           .tabItem {
                    Image(systemName: "house")
                        .renderingMode(.template)
               
               Text("Home")
                }
            
            MenuView()
                .tabItem {
                    Image(systemName: "calendar")
                        .renderingMode(.template)
                    
                    Text("Planner")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "books.vertical")
                        .renderingMode(.template)
                    
                    Text("Library")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                        .renderingMode(.template)
                    Text("Profile")
                }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
