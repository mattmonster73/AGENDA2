//
//  CustomCard1.swift
//  AGENDA
//
//  Created by Emeka Martin Eke on 21/08/2023.
//

import SwiftUI

struct CustomCard1: View {
    var body: some View {
        
        VStack (alignment: .leading, spacing: 4) {
            HStack (alignment: .top){
                Text("CompSci")
                    .font(.navTitle)
                    .frame(maxWidth: 170, alignment: .leading)
                .layoutPriority(1)
                
                Image(systemName: "ellipsis")
                                            .frame(maxWidth: 170,  alignment: .topTrailing)
                                            .padding(.top,5)
            }
            
            Text("Coding assignment")
                .font(.taskText)
                .frame(maxWidth: .infinity, alignment: .leading)
                .opacity(0.7)
            
            Text("Due: 30/09/23")
                .font(.taskText)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                .padding(.bottom,-10)
            
            
        }
        .foregroundColor(.white)
        .padding(25)
        .frame(width: 180, height: 190)
        .background(
                Color.indigo.opacity(0.5))
        .mask(RoundedRectangle (cornerRadius: 30, style:
                .continuous))
        .shadow(color: .indigo.opacity(0.3), radius: 8, x: 0, y: 12)
        .shadow(color: .indigo.opacity(0.3), radius: 2, x: 0, y: 1)
    
       
        
        
        
        
    }
}

struct CustomCard1_Previews: PreviewProvider {
    static var previews: some View {
        CustomCard1()
    }
}
