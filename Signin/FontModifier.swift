//
//  FontModifier.swift
//  Signin
//
//  Created by Sirak on 12/3/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import SwiftUI

struct BorderViewModifier: ViewModifier {
    
    
   func body(content: Content) -> some View {
            content
               .foregroundColor(Color.black)
                .font(.system(size: 20, weight: .bold, design: .rounded))
    }
}

extension View {
  func customFont() -> some View {
    ModifiedContent(
      content: self,
      modifier: BorderViewModifier()
    )
  }
}

