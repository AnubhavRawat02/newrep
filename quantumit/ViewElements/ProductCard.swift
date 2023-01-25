//
//  ProductCard.swift
//  quantumit
//
//  Created by Anubhav Rawat on 25/01/23.
//

import SwiftUI

struct ProductCard: View {
    
    var Fruitname: String
    var price: Int
    var quantity: Int
    var isFruit: Bool
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack(alignment: .leading){
            Image(Fruitname)
                .resizable()
                .scaledToFit()
                .frame(width: 150)
            Text("₹ \(price)")
            Text("\(Fruitname)  \(quantity) \(isFruit ? "kg" : "pcs")")
            Button {
//                add the item to cart.
                userData.addItem(name: Fruitname, price: price, quantity: quantity, isFruit: isFruit)
            } label: {
                ZStack{
                    Color.red.frame(width: 100, height: 40)
                    Text("Add")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            }
            .padding(.leading, 23)
            

        }
        .padding()
        .frame(height: 230)
        .border(.gray.opacity(0.4), width: 5)
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(Fruitname: "Banana", price: 32, quantity: 1, isFruit: true)
    }
}
