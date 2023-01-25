//
//  UserData.swift
//  quantumit
//
//  Created by Anubhav Rawat on 25/01/23.
//

import Foundation

class Product: Identifiable{
    var id: UUID
    var name: String
    var price: Int
    var quantity: Int
    
    init(name: String, price: Int, quantity: Int) {
        self.id = UUID()
        self.name = name
        self.price = price
        self.quantity = quantity
    }
}


class UserData: ObservableObject{
    
    @Published var cartItems: [Product] = []
    @Published var noCartItems: Int = 0
    @Published var cartTotal: Int = 0
    
    @Published var designerCart: [Product] = []
    @Published var noDesignerItems: Int = 0
    @Published var designerTotal: Int = 0
    
    
    func addItem(name: String, price: Int, quantity: Int, isFruit: Bool){
        if isFruit{
            var itemPresent = false
            for item in cartItems{
                if name == item.name{
                    item.quantity += quantity
                    itemPresent = true
                    noCartItems += 1
                    cartTotal += price
                    break
                }
            }
            if !itemPresent{
                cartItems.append(Product(name: name, price: price, quantity: quantity))
                noCartItems += 1
                cartTotal += price
            }
        }else{
            var itemPresent = false
            for item in designerCart{
                if name == item.name{
                    item.quantity += quantity
                    itemPresent = true
                    noDesignerItems += 1
                    designerTotal += price
                    break
                }
            }
            if !itemPresent{
                designerCart.append(Product(name: name, price: price, quantity: quantity))
                noDesignerItems += 1
                designerTotal += price
            }
        }
    }
    
    func deleteCart(){
        cartItems = []
        noCartItems = 0
        cartTotal = 0
    }
    
    func deleteDesignerCart(){
        designerCart = []
        noDesignerItems = 0
        designerTotal = 0
    }
    
}
