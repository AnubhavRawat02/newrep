//
//  Login.swift
//  quantumit
//
//  Created by Anubhav Rawat on 25/01/23.
//

import SwiftUI

struct Login: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var error: String?
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        VStack(spacing: 30){
            
            Text("Login")
                .font(.system(size: 40))
                .fontWeight(.black)
            
//            email and password fields
            VStack{
                VStack(alignment: .leading){
                    Text("Email")
                    TextField("Email", text: $email)
                        .padding()
                        .overlay{
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black.opacity(0.1), lineWidth: 4)
                        }
                    Text("Password")
                    TextField("Password", text: $password)
                        .padding()
                        .overlay{
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black.opacity(0.1), lineWidth: 4)
                        }
                }
                
                HStack{
                    Spacer()
                    Button {
    //                    forgot password
                    } label: {
                        Text("forgot password?")
                    }

                }
            }
            
            
            Button {
//                validation
                if !email.contains("@"){
                    error = "Not valid email"
                    return
                }
                if password.count <= 6{
                    error = "password must be at least 6 characters"
                }
                print("logged in using email and password")
                
                isLoggedIn = true
            } label: {
                CustomButton()
            }
            
            VStack{
                Text("or sign in using")
                HStack(spacing: 15){
                    Button {
                        print("logged in using facebook")
                        isLoggedIn = true
                    } label: {
                        ZStack{
                            Color("Facebook")
                                .frame(width: 50, height: 50)
                                .cornerRadius(30)
                            Text("f")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                    }

                    Button {
                        print("logged in using apple")
                        isLoggedIn = true
                    } label: {
                        ZStack{
                            Color.black
                                .frame(width: 50, height: 50)
                                .cornerRadius(30)
                            Image(systemName: "apple.logo")
                                .font(.system(size: 23))
                                .foregroundColor(.white)
                            
                        }
                    }

                    Button {
                        print("logged in using google")
                        isLoggedIn = true
                    } label: {
                        ZStack{
                            Color("Google")
                                .frame(width: 50, height: 50)
                                .cornerRadius(30)
                            Text("G")
                                .font(.system(size: 27))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            
                        }
                    }
                    
                }
            }

        }
        .padding()
        
    }
}

//struct Login_Previews: PreviewProvider {
//    static var previews: some View {
//        Login()
//    }
//}
