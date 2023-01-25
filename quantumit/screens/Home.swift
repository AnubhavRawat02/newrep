//
//  Home.swift
//  quantumit
//
//  Created by Anubhav Rawat on 25/01/23.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack{
            
//            top title and cart
            ZStack{
                Text("Home")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                
                HStack{
                    Spacer()
                    
                    NavigationLink {
                        CartScreen()
                    } label: {
                        ZStack{
                            VStack{
                                Image(systemName: "cart.fill")
                                Text("Cart")
                            }
                            .font(.system(size: 20))
                            .foregroundColor(.red)
                            Text("\(userData.noCartItems + userData.noDesignerItems)")
    //                        Text("\(")
                                .foregroundColor(.orange)
                                .fontWeight(.bold)
                                .background{
                                    Circle().fill(.white)
                                }
                                .offset(x: 10, y: -20)
                        }
                    }

                    
                }
                .padding()
            }
            
            ScrollView{
                VStack{
                    FruitsSection()
                    
                    DesignerSection()
                }
            }
        }
    }
}

struct DesignerSection: View{
    var body: some View{
        VStack(alignment: .leading){
            Text("Designer Hub")
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ProductCard(Fruitname: "Kurti", price: 1000, quantity: 1, isFruit: false)
                    ProductCard(Fruitname: "Lehenga", price: 1000, quantity: 1, isFruit: false)
                    ProductCard(Fruitname: "Saree", price: 1000, quantity: 1, isFruit: false)
                    ProductCard(Fruitname: "Dupatta", price: 1000, quantity: 1, isFruit: false)
                }
            }
        }
        .padding()
        .border(.gray.opacity(0.3), width: 4)
    }
}

struct FruitsSection: View{
    var body: some View{
        VStack(alignment: .leading){
            Text("Fruits")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ProductCard(Fruitname: "Banana", price: 32, quantity: 1, isFruit: true)
                    ProductCard(Fruitname: "Apple", price: 100, quantity: 1, isFruit: true)
                    ProductCard(Fruitname: "Pear", price: 32, quantity: 1, isFruit: true)
                    ProductCard(Fruitname: "Mango", price: 100, quantity: 1, isFruit: true)
                    ProductCard(Fruitname: "Strawberry", price: 32, quantity: 1, isFruit: true)
                    ProductCard(Fruitname: "Pomegranate", price: 100, quantity: 1, isFruit: true)
                    ProductCard(Fruitname: "DragonFruit", price: 32, quantity: 1, isFruit: true)
                    
//                    Apple Mango Pear Strawberry Pomegranate DragonFruit
                }
            }
        }
        .padding()
        .border(.gray.opacity(0.3), width: 4)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
