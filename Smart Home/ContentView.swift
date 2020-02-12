//
//  ContentView.swift
//  Smart Home
//
//  Created by Arsalan Iravani on 21/11/2019.
//  Copyright © 2019 Arsalan Iravani. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private static var testRoom = Room(name: "Living Room")
    @State private static var testRoom2 = Room(name: "Dining Room")
    @State private var user = User()
    
    @State private var rooms = [testRoom, testRoom2]
    
    var body: some View {
        
        TabView {
            NavigationView {
                Page1(user: user, rooms: $rooms)
            }
            .tabItem {
                Image(systemName: "1.circle")
                Text("First")
            }.tag(0)
            
            Page2()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Second")
            }.tag(1)
        }
    }
    
    private func action() {
        print("Salam from Azerbaijan")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
