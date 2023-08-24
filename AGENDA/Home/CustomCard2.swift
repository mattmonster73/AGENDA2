//
//  CustomCard2.swift
//  AGENDA
//
//  Created by Emeka Martin Eke on 22/08/2023.
//

import SwiftUI

struct CustomCard2: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 4) {
            HStack (alignment: .top){
                Text("Group Project")
                    .font(.navTitle)
                    .frame(maxWidth: 170, alignment: .leading)
                .layoutPriority(1)
                
                Image(systemName: "ellipsis")
                                            .frame(maxWidth: 170,  alignment: .topTrailing)
                                            .padding(.top,5)
            }
            
            Text("ML Hand-In")
                .font(.taskText)
                .frame(maxWidth: .infinity, alignment: .leading)
                .opacity(0.7)
            
            Text("Due: 25/10/23")
                .font(.taskText)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                .padding(.bottom,-10)
            
            
        }
        .foregroundColor(.white)
        .padding(25)
        .frame(width: 180, height: 190)
        .background(
                Color.black.opacity(0.5))
        .mask(RoundedRectangle (cornerRadius: 30, style:
                .continuous))
        .shadow(color: .black.opacity(0.3), radius: 8, x: 0, y: 12)
        .shadow(color: .indigo.opacity(0.3), radius: 2, x: 0, y: 1)
    
       
        


        
        
        
        
        
    }
}

struct CustomCard2_Previews: PreviewProvider {
    static var previews: some View {
        CustomCard2()
    }
}
