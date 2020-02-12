//
//  CustomToggle.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 22/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import SwiftUI
import UIKit

struct CustomToggle: View {
    
    @Binding var isOn: Bool
    
    var icon: UIImage?
    var title: String = ""
    
    var height: CGFloat = 40
    
    var body: some View {
        ZStack {
            Circle()
                .fill( LinearGradient(gradient: Gradient(colors: isOn ? [.red, .yellow] : [.green, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: height, height: height)
                .onTapGesture {
                    self.isOn.toggle()
            }
            VStack {
                Image(uiImage: icon ?? UIImage())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: height / 2, alignment: .center)
                
                if !title.isEmpty {
                    Text(title)
                }
            }
        }
    }
}


struct CustomToggle_Previews: PreviewProvider {
    @State private static var ooo = false

    static var previews: some View {
        CustomToggle(isOn: $ooo, icon: UIImage(named: "rain")!, title: "salam")
    }
}
