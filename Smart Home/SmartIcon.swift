//
//  SmartIcon.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 24/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import SwiftUI

struct SmartIcon: View {
    let height: CGFloat = 40
    var icon: String = "rain"
    
    var body: some View {
        
        ZStack {
            Circle()
                .fill( LinearGradient(gradient: Gradient(colors: [.red, .yellow]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: height, height: height)
            
            VStack {
                Image(uiImage: UIImage(named: icon) ?? UIImage(named: "rain")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: height / 2, alignment: .center)
            }
        }
    }
}

struct SmartIcon_Previews: PreviewProvider {
    static var previews: some View {
        SmartIcon()
    }
}
