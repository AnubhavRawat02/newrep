//
//  ContentView.swift
//  quantumit
//
//  Created by Anubhav Rawat on 25/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoggedIn: Bool = false
    @StateObject var userData = UserData()
    
    var body: some View {
        if isLoggedIn{
            MainScreen()
                .environmentObject(userData)
        }else{
            Login(isLoggedIn: $isLoggedIn)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
