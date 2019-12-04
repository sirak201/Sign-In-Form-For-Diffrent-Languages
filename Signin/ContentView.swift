//
//  ContentView.swift
//  Signin
//
//  Created by Sirak on 12/3/19.
//  Copyright © 2019 Sirak. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    
    @State private var isEnglish = false
    
 
    var body: some View {
        
        GeometryReader { geometry in

            ZStack {
                Image("4500")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                
                Rectangle()
                 .edgesIgnoringSafeArea(.all)
                 .foregroundColor(Color.black.opacity(0.25))
                
                SignInForm(isEnglish: self.$isEnglish)
            }
        }

            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

