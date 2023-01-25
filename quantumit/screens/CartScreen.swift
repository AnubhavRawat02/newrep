//
//  CartScreen.swift
//  quantumit
//
//  Created by Anubhav Rawat on 25/01/23.
//

import SwiftUI

struct CartScreen: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    FruitCart()
                    
                    DesignerCart()
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "house.fill")
                            .font(.system(size: 22))
                            .foregroundColor(.red)
                    }
                    
                    ToolbarItem(placement: .principal) {
                        Text("Cart")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                    }
                }
            }
            
        }
        
    }
}

struct FruitCart: View{
    
    @EnvironmentObject var userData: UserData
    
    var body: some View{
        VStack(alignment: .leading){
            Text("Mini basket")
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(userData.cartItems, id: \.id){item in
                        ProductCard(Fruitname: item.name, price: item.price, quantity: item.quantity, isFruit: true)
                    }
                }
            }
            
            HStack{
//                total
                Text("₹ \(userData.cartTotal)")
                Spacer()
//                delete cart
                Button {
                    userData.deleteCart()
                } label: {
                    ZStack{
                        Color.red.frame(width: 120, height: 35).cornerRadius(10)
                        Text("Delete Cart")
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }

                Button {
                    print("checkout")
                } label: {
                    ZStack{
                        Color.red.frame(width: 100, height: 35).cornerRadius(10)
                        Text("Checkout")
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }
//                checkout
            }
        }.padding()
    }
}

struct DesignerCart: View{
    
    @EnvironmentObject var userData: UserData
    
    var body: some View{
        VStack(alignment: .leading){
            Text("Designer Hub")
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(userData.designerCart, id: \.id){item in
                        ProductCard(Fruitname: item.name, price: item.price, quantity: item.quantity, isFruit: false)
                    }
                }
            }
            
            
            HStack{
//                total
                Text("₹ \(userData.designerTotal)")
                Spacer()
//                delete cart
                Button {
                    userData.deleteDesignerCart()
                } label: {
                    ZStack{
                        Color.red.frame(width: 120, height: 35).cornerRadius(10)
                        Text("Delete Cart")
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }

                Button {
                    print("checkout")
                } label: {
                    ZStack{
                        Color.red.frame(width: 100, height: 35).cornerRadius(10)
                        Text("Checkout")
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }
//                checkout
            }
//            .padding()
        }
        .padding()
    }
}

struct CartScreen_Previews: PreviewProvider {
    static var previews: some View {
        CartScreen()
    }
}
