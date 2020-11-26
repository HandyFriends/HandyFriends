//
//  SettingsView.swift
//  HandyFriends
//
//  Created by Jolie Ip  on 24/11/2020.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ScrollView{
        VStack{
          
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 250, height: 90)
                        .foregroundColor(Color.offWhite)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    HStack{
                        RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                            .frame(width: 60, height: 60, alignment: .leading)
                        Spacer()
                     Text("Name and Picture here")
            
                    }.padding(.horizontal, 50)
                
                
            }
            }
        HStack{
            Text("Your name")
            Spacer()
            Text("Name")
            
        }.padding(.horizontal, 15)
            
            VStack{
                HStack{
                Text("Email")
                Spacer()
                    Text("Email here").background(
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 100, height: 20)
                            .foregroundColor(Color.offWhite)
                    )
               
                }.padding(.horizontal, 15)
            }
        }
        
        }
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
