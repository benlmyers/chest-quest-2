//
//  HomeTab.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/4/21.
//

import SwiftUI
import SwiftUIX

struct HomeTab: View {
  
  @EnvironmentObject var g: Global
  
  @State var tiltMoneyCounter: Double = 0.0
  
  init() {
    UIView.appearance().isMultipleTouchEnabled = true
    UIView.appearance().isExclusiveTouch = true
  }
  
  var moneyCounter: some View {
    VStack {
      Text("Money")
        .font(.caption)
        .b()
      Text3D(text: "$\(g.p.money)", color1: Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)), color2: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
        .width(200.0)
        .rotation3DEffect(.degrees(tiltMoneyCounter), axis: (10.0, 10.0, 00.0))
      Text("Max $\(g.p.maxMoney)")
        .italic()
        .font(.caption)
        .foregroundColor(g.p.money >= g.p.maxMoney ? Color.red : Theme.c)
    }
  }
  
  var shardCounter: some View {
    VStack {
      Text("Shards")
        .font(.caption)
        .b()
      Text3D(text: "\(g.p.shards)", color1: Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)), color2: Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
        .width(200.0)
      Text("Max \(g.p.maxShards)")
        .italic()
        .font(.caption)
        .foregroundColor(g.p.shards >= g.p.maxShards ? Color.red : Theme.c)
    }
  }
  
  var body: some View {
    
    ZStack {
      
      ScrollView {
      
        VStack {
          
          HStack {
            
            moneyCounter
            
            if g.p.u.shards { shardCounter }
          }
          
          Button(action: {g.p.money = 0}) { Text("reset") }
        }
      }
      .padding()
      
      VStack {
        
        Spacer()
        
        HStack {
          BuyChestButton()
          BuyChestButton()
          BuyChestButton()
        }
        
        VStack(alignment: .center) {
          Text("Tap for money!")
            .fontWeight(.bold)
        }
        .maxWidth(.infinity)
        .padding(24.0)
        .foregroundColor(.white)
        .background(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
        .cornerRadius(12.0)
        .opacity(g.p.money >= g.p.maxMoney ? 0.5 : 1.0)
        .rotation3DEffect(.degrees(tiltMoneyCounter / 10.0), axis: (10.0, 10.0, 00.0))
        .onTapGesture(perform: moneyTap)
      }
      .padding()
    }
  }
  
  private func moneyTap() {
    if g.p.money < g.p.maxMoney {
      g.p.money += 1
      Haptic.play(.light)
      animateMoneyCounter()
    }
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
