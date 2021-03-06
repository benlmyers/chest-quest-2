//
//  RootView.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/4/21.
//

import SwiftUI

struct RootView: View {
  
  @EnvironmentObject var g: Global
  
  var body: some View {
    
    TabView(selection: $g.tab) {
      HomeTab().tabItem { Text("Home") }.tag(1)
      Text("Tab2").tabItem { Text("Tab 2") }.tag(2)
    }
    .onAppear(perform: handleAppear)
    .onDisappear(perform: handleDisappear)
  }
  
  private func handleAppear() {
    Player.load(to: g)
  }
  
  private func handleDisappear() {
    Player.save(with: g)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
