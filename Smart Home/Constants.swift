//
//  Constants.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 28/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import UIKit
import SwiftUI
import Foundation
import MediaPlayer

let moduleBackgroundColor = Color(red: 0.16, green: 0.18, blue: 0.22)

extension MPVolumeView {
    static func setVolume(_ volume: Float) {
        // Need to use the MPVolumeView in order to change volume, but don't care about UI set so frame to .zero
        let volumeView = MPVolumeView(frame: .zero)
        // Search for the slider
        let slider = volumeView.subviews.first(where: { $0 is UISlider }) as? UISlider
        // Update the slider value with the desired volume.
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.01) {
            slider?.value = volume
        }
    }
}
