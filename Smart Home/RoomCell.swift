//
//  RoomCell.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 21/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import SwiftUI
import UIKit.UIImage

struct RoomCell: View, Identifiable {
    var id = UUID()
    
    @Binding var room: Room
    var height: CGFloat = 180
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .foregroundColor(.secondary)
                .shadow(radius: 1, y: 1)
            
            Image("bmw")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(10)
                .opacity(0.7)
            
            VStack(alignment: HorizontalAlignment.leading) {
                if !room.name.isEmpty {
                    Text(room.name).font(.title)
                }
                
                Spacer()
                
                HStack {
                    Text("22 ºC").font(.headline)

                    Spacer()
                    
                    ForEach(room.devices.indices) { index in
                        CustomToggle(isOn: self.$room.devices[index].isOn, icon: self.room.devices[index].icon)
                    }
                }
                
            }
            .padding()
            .foregroundColor(.white)
            .font(.title)
        }
    }
}

struct RoomCell_Previews: PreviewProvider {
    @State private static var testRoom = Room(name: "Living Room")
    static var previews: some View {
        RoomCell(room: $testRoom)
    }
}
