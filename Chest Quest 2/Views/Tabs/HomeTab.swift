//
//  HomeTab.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/4/21.
//

import SwiftUI

struct HomeTab: View {
  
  @EnvironmentObject var g: Global
  
  var body: some View {
    
    VStack {
      
      ZStack {
    
        Text("$\(g.p.money)")
          .font(.title2)
          .fontWeight(.black)
      }
      
      Button(action: moneyTap) {
        Text("Tap!")
      }
    }
  }
  
  private func moneyTap() {
    g.p.money += 1
    Haptic.play(.light)
  }
}

struct HomeTab_Previews: PreviewProvider {
  static var previews: some View {
    HomeTab()
  }
}
