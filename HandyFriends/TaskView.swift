//
//  TaskView.swift
//  HandyFriends
//
//  Created by Jolie Ip  on 25/11/2020.
//

import SwiftUI

struct TaskView: View {
    @State var taskname : String
    
    var body: some View {
        
        VStack{
        TextField("Enter Task Name Here", text: $taskname)
        }
    }
}

//struct TaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskView($taskname)
//    }
//}
