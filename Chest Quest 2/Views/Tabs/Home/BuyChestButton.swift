//
//  BuyChestButton.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/5/21.
//

import SwiftUI

struct BuyChestButton: View {
  
  @EnvironmentObject var g: Global
  
  var price: Int = 45
  
  var body: some View {
    
    VStack(alignment: .center) {
      Text("Buy Chest")
        .fontWeight(.bold)
      Text("$\(price)")
        .fontWeight(.semibold)
    }
    .maxWidth(.infinity)
    .padding(.vertical)
    .foregroundColor(.white)
    .background(Color(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)))
    .cornerRadius(12.0)
    .opacity(g.p.money >= price ? 1.0 : 0.5)
    .onTapGesture(perform: buyChest)
  }
  
  private func buyChest() {
    
  }
}
