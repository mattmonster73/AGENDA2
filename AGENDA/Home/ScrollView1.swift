//
//  ScrollView1.swift
//  AGENDA
//
//  Created by Emeka Martin Eke on 23/08/2023.
//

import SwiftUI

struct ScrollView1: View {
    
    @State private var activeView: Int = 0
    
    var body: some View {
        
        HStack(spacing: 20) {
            VStack {
                Button(action: { activeView = 0 }) {
                    Text("Today")
                        .font(.custom("Mulish-SemiBold", size: 15))
                        .padding(10)
                        .foregroundColor(activeView == 0 ? .black : .primary)
                }
                
            }
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(activeView == 0 ? Color.black : Color.clear, lineWidth: 2) 
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(activeView == 0 ? Color.yellow.opacity(0.2) : Color.gray.opacity(0.1))
                    )
            )
            .padding(.bottom, 10)
            
            
            
            
            VStack {
                Button(action: { activeView = 1 }) {
                    Text("Upcoming")
                        .font(.custom("Mulish-SemiBold", size: 15))
                        .padding(10)
                        .foregroundColor(activeView == 1 ? .black : .primary)
                }
            }
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(activeView == 1 ? Color.black : Color.clear, lineWidth: 2) // Add outline
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(activeView == 1 ? Color.yellow.opacity(0.2) : Color.gray.opacity(0.1))
                    )
            )
            .padding(.bottom, 10)
            
            
            
            
            VStack {
                Button(action: { activeView = 2 }) {
                    Text("Recent")
                        .font(.custom("Mulish-SemiBold", size: 15))
                    .padding(10)
                    .foregroundColor(activeView == 2 ? .black : .primary) //
                    
                }
            }
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(activeView == 2 ? Color.black : Color.clear, lineWidth: 2)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(activeView == 2 ? Color.yellow.opacity(0.2) : Color.gray.opacity(0.1))
                    )
            )
            .padding(.bottom, 10)
           
            
            
            
            VStack {
                Button(action: { activeView = 3 }) {
                Text("Important")
                    .font(.custom("Mulish-SemiBold", size: 15))
                    .padding(10)
                    .foregroundColor(activeView == 3 ? .black : .primary)
            }
                
            }
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(activeView == 3 ? Color.black : Color.clear, lineWidth: 2)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(activeView == 3 ? Color.yellow.opacity(0.2) : Color.gray.opacity(0.1))
                    )
            )
            .padding(.bottom, 10)

            
            
            
        }
        .padding(20)
        
      
                   if activeView == 0 {
                       TodayView()
                          // .padding(.top, 10)
                  
                   } else if activeView == 1 {
                       UpcomingView()
                       
                   } else if activeView == 2 {
                     RecentView()
                       
                   } else if  activeView == 3 {
                       ImportantView()
                   }
               
            
        

    }
}

struct ScrollView1_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView1()
    }
}
