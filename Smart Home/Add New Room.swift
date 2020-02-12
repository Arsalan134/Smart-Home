//
//  Add New Room.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 04/12/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import SwiftUI

struct AddNewRoom: View {
    
    @State var room = Room()
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Name")
                
                Spacer()
            
                TextField("Name", text: $room.name)
            }
            
            HStack {
                Text("Image")
                
                Spacer()
            
                
            }
            
            Button(action: {
                self.save()
            }) {
                Text("Save a room")
            }
            
        }.padding()
    }
    
    func save() {
        
    }
}

struct AddNewRoomPreviews: PreviewProvider {
    static var previews: some View {
        AddNewRoom()
    }
}
