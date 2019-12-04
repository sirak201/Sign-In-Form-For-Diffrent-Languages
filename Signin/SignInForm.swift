//
//  SignInForm.swift
//  Signin
//
//  Created by Sirak on 12/3/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import SwiftUI

struct SignInForm: View {
    @Binding var isEnglish : Bool
    var body: some View {
        
        
        GeometryReader { geometry in
                    VStack {
                       
                    VStack(alignment: .center, spacing: 0){
                        Text(!self.isEnglish ? "Tripto" : "መሸጨኣ")
                            .font(.system(size: 60, weight: .heavy, design: .rounded))
                            .foregroundColor(Color.white)
                             .shadow(color: Color.black.opacity(0.8), radius: 20,  y: 5)
                            .padding(.bottom , geometry.size.height / 3)
                        
                        
                        VStack(spacing : 15){
                            Button(action: {}) {
                        
                                    ZStack {
                                        RoundedRectangle(cornerRadius: .infinity)
                                            .frame(width: 320, height: 60)
                                            .foregroundColor(Color.white)
                                                   .padding([.leading , .trailing] , 100)
                                        Text(!self.isEnglish ? "Login" : "መጊብያ")
                                            .customFont()
                                               
                                    }.padding()
                                    
                            
                            }.frame(width: 320, height: 60)
                                .shadow(color: Color.black.opacity(0.8), radius: 20,  y: 5)
                            
                        Button(action: {}) {
                                   
                               ZStack {
                                RoundedRectangle(cornerRadius: .infinity)
                                       .frame(width: 320, height: 60)
                                       .foregroundColor(Color.white)
                                              .padding([.leading , .trailing] , 100)
                                Text(!self.isEnglish ? "Signup" : "መመዝገቢኣ")
                                        .customFont()
                                          
                               }.padding()
                               
                                       
                           }.frame(width: 320, height: 60)
                            .shadow(color: Color.black.opacity(0.8), radius: 20,  y: 5)
                            
                            Toggle(isOn: self.$isEnglish) {
                                Text("ኣማሪኛ").foregroundColor(Color.black)
                                .padding()
                            }.padding()
                            
                            .frame(width : 200 , height: 50)
                            .background(RoundedRectangle(cornerRadius: .infinity).foregroundColor(Color.white)
                            )
                        }.padding(.top ,  geometry.size.height / 6)
                        
                       
                    }
                        
                
                    .frame(maxHeight : .infinity)

                    
                }
            
        }

    }
}

//struct SignInForm_Previews: PreviewProvider {
//    static var previews: some View {
//        SignInForm(isEnglish: true)
//    }
//}
