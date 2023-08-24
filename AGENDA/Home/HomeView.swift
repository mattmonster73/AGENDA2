//
//  HomeView.swift
//  AGENDA
//
//  Created by Emeka Martin Eke on 31/05/2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showNotificationSheet: Bool = false
    
    @State private var showPlusSheet: Bool = false
    
    @State private var isDisplayingPillButtons = false

    
    
    
    
    var body: some View {
        
        
        ZStack {
            ScrollView {
                VStack {
                    
                    VStack (alignment: .leading, spacing: 8) {
                        Text("Projects")
                            .font(.navTitle)
                        Text("You have 0 projects")
                            .font(.taskText)
                            .opacity(0.7)
                    }
                    .padding(.horizontal, 40)
                    .padding(.top, 10)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    
                    
                    
                    // CARDS
                        VStack {
                            HStack(spacing: 20) {
                                CustomCard1()
                                CustomCard2()
                                
                            }
                            .padding(.top, 10)
                            
                            CustomCard3()
                                .padding(.top,10)
                        

                            }
                        .padding(.vertical, 20)
                        .padding(.horizontal, 20)
                        
                            .frame(maxWidth: .infinity, alignment: .top)
                    
                    
                   //SECTION 2
                    
                    HStack {
                        Text("Tasks")
                            .font(.navTitle)
                            
                        
                        
                        Text("all")
                            .font(.taskText)
                            .opacity(0.7)
                            .frame(maxWidth: .infinity,  alignment: .topTrailing)
                            
                    }
                    .padding(.horizontal, 20)
                    .frame(width: .infinity, height: 1)
                    Spacer()
                    
                    
                    
                    //second half
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        
                        ScrollView1()
                        
                    }
               
                    

                    
                    
                   
                   
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("Background"))
                // Notification Sheet
                .sheet(isPresented: $showNotificationSheet, content:
                    notificationSheet.init)
                .sheet(isPresented: $showPlusSheet, content:
                    plusSheet.init)
                
                .toolbar {
                    
                    //LEFT BAR
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        
                        Button {
                            showNotificationSheet.toggle()
                        } label: {
                            Label("Notifications", systemImage:
                                    "bell")
                        }
                        
                        

                    }
                    
                    // AGENDA LOGO
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("AGENDA")
                            .font(.custom("Mulish-SemiBold", size: 16))
                            .padding(5)
                            .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.black, lineWidth: 1)
                                )
                                .padding(10)
                    }
                    
                   
                    
            }
                
///
                
                
            }
			.overlay(alignment: .bottomTrailing) {
				
				VStack(alignment: .trailing, spacing: 10) {
					if isDisplayingPillButtons {
						Group {
							Button {
								
							} label: {
								Text("Button 1")
									.padding()
							}
							
							Button {
								
							} label: {
								Text("Button 2")
									.padding()
							}
						}
						.font(.headline)
						.background(Color.gray)
						.clipShape(Capsule())
						.contentShape(Capsule())
						.foregroundStyle(.primary)
						.transition(
							.move(edge: .top)
							.combined(with: .opacity)
						)
					}
					
					Button {
						withAnimation {
							isDisplayingPillButtons.toggle()
						}
					} label: {
						Image(systemName: isDisplayingPillButtons ? "xmark.circle.fill" : "plus.circle.fill")
							.resizable()
							.frame(width: 50, height: 50)
							.foregroundColor(.black.opacity(0.7))
							.background(Color.white)
							.clipShape(Circle())
							.shadow(radius: 5)
							.rotationEffect(.degrees(isDisplayingPillButtons ? 90 : 0))
					}
					.padding(16)
					.clipShape(Circle())
					.shadow(radius: 10)
				}
				.padding(.horizontal)
			}
                 
            // PLUS Button
//            .overlay(
//                VStack {
//                    Spacer()
//                    HStack {
//                        Spacer()
//                        Button(action: {
//                            showPlusSheet.toggle()
//                        }) {
//                            Image(systemName: "plus.circle.fill")
//                                .resizable()
//                                .frame(width: 50, height: 50)
//                                .foregroundColor(.black.opacity(0.7))
//                                .background(Color.white)
//                                .clipShape(Circle())
//                                .shadow(radius: 5)
//                        }
//                        .padding(16)
//                        .clipShape(Circle())
//                        .shadow(radius: 10)
//                    }
//                }
//            )
            ///END OF BIG PLUS
        }
        
        
        
        
        
        
       
        
        
    }
}

struct notificationSheet: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                Divider()
                
                Color("Background")
                    .edgesIgnoringSafeArea(.all)
                
            
                    .toolbar {
                        
                        ToolbarItem(placement: .navigationBarLeading) {
                            
                            Button(action: dismiss.callAsFunction) {
                                Image(systemName: "xmark")
                            }
                            
                        }
                    }
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
        
            
        }
    
        
    }
}

struct plusSheet: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                
                Color("Background")
                    .edgesIgnoringSafeArea(.all)
                
                    .toolbar {
                        
                        ToolbarItem(placement: .navigationBarLeading) {
                            
                            Button(action: dismiss.callAsFunction) {
                                Image(systemName: "xmark")
                            }
                        }
                    }
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
