//
//  Lightings.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 28/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import SwiftUI

struct SliderModule: View {
    let height: CGFloat = 120
    
    @Binding var isOn: Bool
    @Binding var slider: Double
    
    let name: String
    let imageName: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0, style: .continuous)
                .foregroundColor(moduleBackgroundColor)
                .shadow(radius: 1, y: 1)
                .frame(height: height, alignment: .center)
            
            HStack(alignment: .top) {
                
                SmartIcon(icon: imageName)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(name).font(.headline)
                        
                        Spacer()
                        
                        Toggle(isOn: $isOn) {
                            EmptyView()
                        }
                        
                    }.padding(.top, 5)
                    
                    Spacer()
                    
                    HStack {
                        Circle().frame(width: 10, height: 10)
                        
                        Slider(value: $slider).accentColor(.yellow)
                        
                        Circle().frame(width: 20, height: 20)
                    }
                    
                }
            }
            .padding()
            .frame(height: height)
            .foregroundColor(.white)
        }
        
    }
}

struct SliderModule_Previews: PreviewProvider {
    @State static var o = true
    @State static var o2 = 0.4
    
    static var previews: some View {
        SliderModule(isOn: $o, slider: $o2, name: "Some name", imageName: "light")
    }
}

