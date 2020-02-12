//
//  Page1.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 21/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import SwiftUI

struct Page1: View {
    
    @ObservedObject var user: User
    @Binding var rooms: [Room]
    @State var showingDetail = false
    
    var body: some View {
        VStack {
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    CustomButton(isOn: self.$user.isHomeAway, icon: UIImage(named: "home"), title: "At Home")
                    CustomButton(isOn: self.$user.isGuestMode, icon: UIImage(named: "home"), title: "Guest Mode")
                }.padding([.top, .leading])
            }
            
            List(rooms.indices) { index in
                NavigationLink(destination:
                    DetailRoom(room: self.$rooms[index])
                        .navigationBarTitle("\(self.rooms[index].name)"))
                {
                    RoomCell(room: self.$rooms[index])
                }
            }
            
            Button(action: {
                self.showingDetail.toggle()
            }) {
                Text("Salam")
            }.sheet(isPresented: $showingDetail) {
                AddNewRoom()
            }
            
        }
        .navigationBarTitle("Rooms")
    }
}

struct Page1_Previews: PreviewProvider {
    @State private static var testRooms = [Room(name: "Living Room")]
    
    @State private static var user = User()
    
    static var previews: some View {
        Page1(user: user, rooms: $testRooms)
    }
}
