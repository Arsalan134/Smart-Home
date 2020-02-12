//
//  Room.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 22/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import Foundation
import SwiftUI

class Room: ObservableObject {
    
    var name: String = "no name"
    
    @Published var devices: [Device] = [Device(name: "Light 1", icon: UIImage(named: "rain")), Device(name: "Light 2", icon: UIImage(named: "light"))]
    
    init() {
        
    }
    
    init(name: String) {
        self.name = name
    }
    
    static func == (lhs: Room, rhs: Room) -> Bool {
        return lhs.name == rhs.name
    }
    
}
