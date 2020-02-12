//
//  User.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 29/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import Foundation

var user = User()

class User: ObservableObject {
    var name: String?
    var surname: String?
    var email: String?
    
    @Published var isHomeAway: Bool = true
    @Published var isGuestMode: Bool = false
    
    var devices: [Device] = []
    var rooms: [Room] = []
}
