//
//  Text3D.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/5/21.
//

import SwiftUI

struct Text3D: View {
  
  var text: String
  var color1: Color
  var color2: Color
  
  var fontWeight: Font.Weight = .black
  var font: Font = .largeTitle
  
  var body: some View {
    
    ZStack {
      
      Text(text)
        .fontWeight(fontWeight)
        .font(font)
        .foregroundColor(color1)
        .offset(y: 2.0)
      Text(text)
        .fontWeight(fontWeight)
        .font(font)
        .foregroundColor(color2)
    }
  }
}
