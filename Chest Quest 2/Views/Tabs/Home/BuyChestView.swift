//
//  BuyChestView.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/5/21.
//

import SwiftUI

struct BuyChestView: View {
  
  @EnvironmentObject var g: Global
  
  var price: Int = 45
  
  var body: some View {
    
    HStack {
      
      Image("chest")
        .resizable()
        .frame(width: 50.0, height: 50.0)
      
      VStack(alignment: .leading) {
        
        Text("Cost: ") +
        Text("$\(price)")
          .bold()
        
        Group {
          Text("??????")
            .font(.caption) +
          Text(" Series")
            .italic()
            .font(.caption)
        }
        .opacity(0.7)
      }
      
      Spacer()
      
      HStack(spacing: 2.0) {
        Image(systemName: "timer")
          .imageScale(.small)
        Text("∞")
      }
      .font(.caption)
      .c()
      
      Button(action: { g.p.money -= price }) {
        Text("Buy")
          .padding()
          .foregroundColor(.white)
          .background(Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)))
          .cornerRadius(12.0)
          .opacity(g.p.money < price ? 0.5 : 1.0)
      }
      .disabled(g.p.money < price)
      
    }
  }
  
  private func buyChest() {
    
  }
}
