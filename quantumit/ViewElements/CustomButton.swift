//
//  CustomButton.swift
//  quantumit
//
//  Created by Anubhav Rawat on 25/01/23.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("GradientColor1"), Color("GradientColor2")], startPoint: .leading, endPoint: .trailing)
                .frame(width: 300, height: 55)
                .cornerRadius(40)
            
            Text("Login")
                .font(.system(size: 25))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
    }
}
