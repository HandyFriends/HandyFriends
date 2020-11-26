//
//  ContentView.swift
//  HandyFriends
//
//  Created by Jolie Ip  on 23/11/2020.
//

import SwiftUI

struct HomeView: View{
    @State var Taskname: String
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            Color.offWhite
            ContentView()
                           .tabItem {
                               Image(systemName: "house.fill")
                               Text("Home")
                           }
            
            TaskView(taskname: Taskname).tabItem {
             Image(systemName: "hammer.fill")
             Text("Task") }
               SettingsView().tabItem {
                Image(systemName: "person.circle")
                Text("Settings") }
            
                
        }
    }
}
struct ContentView: View {
    var body: some View {
        
        ScrollView  {
            Color.offWhite
            HStack (spacing: 10)
            {
            Text("Discover").font(.system(size: 30, weight: .regular, design: .rounded))
            }.padding(.bottom, 15)
           
            VStack (spacing: 10){
                HStack{
                Button(action: {
                    print("Button tapped")
                }) {
                   Text("Category")
                       }
                .buttonStyle(RectangleButtonCard())
                
                Button(action: {
                    print("Button tapped")
                }) {
                    Text("Category")
                       }
                .buttonStyle(RectangleButtonCard())
               
            }
            }.padding(.bottom, 50)
                
                VStack (spacing: 15){
                    HStack{
                    Button(action: {
                        print("Button tapped")
                    }) {
                       Text("Category")
                           }
                    .buttonStyle(RectangleButtonCard())
                    
                    Button(action: {
                        print("Button tapped")
                    }) {
                        Text("Category")
                           }
                    .buttonStyle(RectangleButtonCard())
                   
                }
               
            }.padding(.bottom, 30)
        
    
            VStack (spacing: 10){
                Text("Suggested").font(.system(size: 30, weight: .regular, design: .rounded))
                    CustomRoundedRectangle()
                    CustomRoundedRectangle()
                    CustomRoundedRectangle()
                    CustomRoundedRectangle()
                }
                    }
                    .edgesIgnoringSafeArea(.all)
        }
        
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


