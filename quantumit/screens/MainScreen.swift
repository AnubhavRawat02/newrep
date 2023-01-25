//
//  MainScreen.swift
//  quantumit
//
//  Created by Anubhav Rawat on 25/01/23.
//

import SwiftUI

struct MainScreen: View {
    
    var body: some View {
        NavigationView {
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                Text("saved")
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Saved")
                    }
                
                Text("Notifications")
                    .tabItem {
                        Image(systemName: "bell.fill")
                        Text("Notification")
                    }
                
                Text("Profile")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                
                CartScreen()
                    .tabItem {
                        Image(systemName: "cart.fill")
                        Text("Cart")
                    }
            }
        }
        
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
