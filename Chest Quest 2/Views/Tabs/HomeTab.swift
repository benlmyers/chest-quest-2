//
//  HomeTab.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/4/21.
//

import SwiftUI

struct HomeTab: View {
  
  @EnvironmentObject var g: Global
  
  @State var tiltMoneyCounter: Double = 0.0
  
  var moneyCounter: some View {
    VStack {
      Text("Balance")
        .font(.caption)
        .b()
      ZStack {
        Text("$\(g.p.money)")
          .font(.title)
          .fontWeight(.black)
          .foregroundColor(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
          .offset(y: 2.0)
        Text("$\(g.p.money)")
          .font(.title)
          .fontWeight(.black)
          .foregroundColor(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
      }
      .rotation3DEffect(.degrees(tiltMoneyCounter), axis: (10.0, 10.0, 00.0))
    }
  }
  
  var body: some View {
    
    VStack {
      
      moneyCounter
      
      Button(action: moneyTap) {
        Text("Tap!")
      }
    }
  }
  
  private func moneyTap() {
    g.p.money += 1
    Haptic.play(.light)
    animateMoneyCounter()
  }
  
  private func animateMoneyCounter() {
    tiltMoneyCounter = 30.0
    AnimationSequence(duration: 0.1, delay: 0, easing: .customEaseOut)
      .append(duration: 0.15, delay: 0.0, easing: .customEaseOut) {
        tiltMoneyCounter = 0.0
      }
      .start()
  }
}

struct HomeTab_Previews: PreviewProvider {
  static var previews: some View {
    HomeTab()
  }
}
