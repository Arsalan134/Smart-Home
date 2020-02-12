//
//  DetailModule.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 24/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import SwiftUI

struct MusicPlayerModule: View {
    
    let height: CGFloat = 120
    
    @ObservedObject var playerManager = PlayerManager()
    let colors: [Color] = [.red, .yellow, .green, .blue, .purple, .red]
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0, style: .continuous)
                .foregroundColor(moduleBackgroundColor)
                .shadow(radius: 1, y: 1)
                .frame(height: height, alignment: .center)
            
            HStack(alignment: .top) {
                
                SmartIcon(icon: "music")
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Music Player").font(.headline).padding(.top, 8)
                        
                        Spacer()
                        
                    }
                    
                    Spacer()
                    
                    HStack {
                        Image(uiImage: (self.playerManager.player.nowPlayingItem?.artwork?.image(at: CGSize(width: 40, height: 40))) ?? UIImage())
                            .resizable()
                            .frame(width: 40, height: 40)
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(5)
                        
                        VStack(alignment: .leading) {
                            Text(playerManager.player.nowPlayingItem?.title ?? "")
                                .minimumScaleFactor(0.9)
                            
                            Text(playerManager.player.nowPlayingItem?.artist ?? "")
                                .foregroundColor(.gray)
                        }
                        .font(.subheadline)
                        .lineLimit(1)
                        .onTapGesture {
                            UIApplication.shared.open(URL(string: "music:")!)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            self.playerManager.player.skipToPreviousItem()
                        }) {
                            Image("prev")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        
                        Button(action: {
                            self.playerManager.pauseOrPlay()
                        }) {
                            ZStack {
                                Circle()
                                    .fill(AngularGradient(gradient: Gradient(colors: colors), center: .center, startAngle: .degrees(self.playerManager.counter), endAngle: .degrees(self.playerManager.counter + 360)))
                                    .frame(width: 35, height: 35, alignment: .center)
                                
                                Circle()
                                    .fill(moduleBackgroundColor)
                                    .frame(width: 25, height: 25, alignment: .center)
                                
                                Image(playerManager.player.playbackState == .playing ? "pause" : "play")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                            }
                        }
                        
                        
                        Button(action: {
                            self.playerManager.player.skipToNextItem()
                        }) {
                            Image("next")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                    }
                }
            }
            .padding()
            .frame(height: height)
            .foregroundColor(.white)
        }
        
    }
}

struct MusicPlayerModule_Previews: PreviewProvider {
    @State static var o = false
    @State static var o2 = 0.4
    
    static var previews: some View {
        MusicPlayerModule()
    }
}
