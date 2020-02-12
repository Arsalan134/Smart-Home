//
//  Page1.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 21/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import SwiftUI

struct Page2: View {
    
    var body: some View {
        VStack {
            
            VStack {
                
                Spacer()
                
                Text("More")
                
                Spacer()
                
                Image("bmw")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Circle())
                
                Spacer()
                
                Text("Arsalan Iravani")
                
                Spacer()
            }
            
            VStack(alignment: .leading) {
                
                Spacer()
                
                Button(action: {
                    print("asd")
                }) {
                    SmartIcon()
                    Text("Edit Rooms")
                }
                
                Spacer()
                
                Button(action: {
                    print("asd")
                }) {
                    SmartIcon()
                    Text("Edit Devices")
                }
                
                Spacer()
                
                Button(action: {
                    print("asd")
                }) {
                    SmartIcon()
                    Text("Help")
                }
                
                Spacer()
                
                Button(action: {
                    print("asd")
                }) {
                    SmartIcon()
                    Text("Log out")
                }
                
                Spacer()
                
            }.accentColor(.primary)
        }
    }
}

struct Page2_Previews: PreviewProvider {
    
    @State private static var user = User()
    
    static var previews: some View {
        Page2()
    }
}

