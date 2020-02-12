//
//  CustomButton.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 29/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    @Binding var isOn: Bool
    
    var icon: UIImage?
    var title: String = ""
    
    var height: CGFloat = 100.0
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill( LinearGradient(gradient: Gradient(colors: isOn ? [.red, .yellow] : [.gray, .gray]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 120, height: height)
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

struct CustomButton_Previews: PreviewProvider {
    
    @State static var a = true
    
    static var previews: some View {
        CustomButton(isOn: $a)
    }
}
