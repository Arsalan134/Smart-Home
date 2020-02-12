//
//  Player.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 27/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import Foundation

import Foundation
import SwiftUI
import MediaPlayer

class PlayerManager: ObservableObject {
    
    @Published var player: MPMusicPlayerController = MPMusicPlayerController.systemMusicPlayer
    
    @Published var makeUpdateTick = false
    
    var timer = Timer()
    
    @Published var elapsed = 0.0
    @Published var left = 0.0
    @Published var total = 0.0
    @Published var counter = 0.0
    
    init() {
        self.player.prepareToPlay()
        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(test), userInfo: nil, repeats: true)
    }
    
    @objc func test() {
        makeUpdateTick.toggle()
        total = player.nowPlayingItem?.playbackDuration ?? 0
        elapsed = player.currentPlaybackTime
        left = total - player.currentPlaybackTime
    
        let date = Date()
        let calendar = Calendar.current
        counter = Double(calendar.component(.second, from: date) * 6)
    }
    
    func pauseOrPlay() {
        switch player.playbackState {
        case .playing:
            player.pause()
        case .stopped:
            player.play()
        case .paused:
            player.play()
        case .interrupted:
            player.play()
        case .seekingForward:
            print("asd3")
        case .seekingBackward:
            print("asd4")
        @unknown default:
            player.play()
        }
        makeUpdateTick.toggle()
    }
}
