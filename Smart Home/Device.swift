//
//  Device.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 29/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct Device: Hashable, Identifiable {
    var id = UUID()
    var name: String?
    var isOn: Bool = false
    var icon: UIImage? = UIImage(named: "home")
    
    static func == (lhs: Device, rhs: Device) -> Bool {
        return lhs.name == rhs.name
    }
}
