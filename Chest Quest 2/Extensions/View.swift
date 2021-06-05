//
//  View.swift
//  Chest Quest 2
//
//  Created by Ben Myers on 6/4/21.
//

import SwiftUI

extension View {
  
  @ViewBuilder
  func a() -> some View {
    self.foregroundColor(Theme.a)
  }
  
  @ViewBuilder
  func b() -> some View {
    self.foregroundColor(Theme.b)
  }
  
  @ViewBuilder
  func c() -> some View {
    self.foregroundColor(Theme.c)
  }
  
  @ViewBuilder
  func x() -> some View {
    self.background(Theme.x)
  }
  
  @ViewBuilder
  func y() -> some View {
    self.background(Theme.y)
  }
  
  @ViewBuilder
  func z() -> some View {
    self.background(Theme.z)
  }
}
