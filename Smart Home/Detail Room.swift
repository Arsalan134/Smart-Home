//
//  DetailRoom.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 22/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import SwiftUI

struct DetailRoom: View {
    
    @Binding var room: Room
    @State var o = false
    @State var o2 = 0.5
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ZStack {
                    Image("bmw")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    VStack {
//                        Text(room.name ?? "no name")
//                            .font(.title)
                        
                        Spacer()
                        
                        HStack {
                            VStack {
                                Text("Temperature")
                                    .font(.caption)
                                Text("22 ºC")
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            
                            Spacer()
                            
                            VStack {
                                Text("Humidity")
                                    .font(.caption)
                                Text("08 ºC")
                                    .font(.title)
                                    .fontWeight(.bold)
                            }
                            
                            Spacer()
                            
                            VStack {
                                Text("Power Consumption")
                                    .font(.caption)
                                
                                HStack{
                                    Text("62")
                                        .font(.title)
                                        .fontWeight(.bold)
                                    Text("kWh")
                                        .font(.subheadline)
                                }
                            }
                        }
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(height: 200, alignment: .center)
                    
                }
                
                
                MusicPlayerModule(playerManager: PlayerManager())
                    .padding([.leading, .trailing])
                SliderModule(isOn: $room.devices[0].isOn, slider: $o2, name: "Lighting 5", imageName: "light")
                    .padding([.leading, .trailing])
                SliderModule(isOn: $room.devices[1].isOn, slider: $o2, name: "Kitchen",  imageName: "light")
                    .padding([.leading, .trailing])
            }
        }
    }
}

struct DetailRoom_Previews: PreviewProvider {
    @State private static var testRoom = Room(name: "Living Room")
    @State private static var testRoom2 = Room(name: "Dining Room")
    
    static var previews: some View {
        DetailRoom(room: $testRoom)
    }
}
