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
  
  var chestsAvailableView: some View {
    Group {
      Text("CHESTS AVAILABLE")
        .fontWeight(.light)
        .font(.caption)
        .b()
      Group {
        BuyChestView()
        BuyChestView()
        BuyChestView()
      }
    }
  }
    
  var progressView: some View {
    Group {
      Text("GAME PROGRESS")
        .fontWeight(.light)
        .font(.caption)
        .b()
      ScrollView(.horizontal, showsIndicators: false) {
        HStack {
          VStack {
            Text("Gold Points")
              .font(.caption)
              .b()
            Text3D(text: "1234", color1: Color(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)), color2: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)), font: .title)
            Image("chest")
              .resizable()
              .frame(width: 100.0, height: 100.0)
            HStack {
              Text("Details")
              Image(systemName: "chevron.right")
            }
            .font(.caption)
            .b()
          }
          .frame(width: 100.0)
          .padding()
          .z()
          .cornerRadius(6.0)
          
          VStack {
            Text("Chests Opened")
              .font(.caption)
              .b()
            HStack(alignment: .bottom, spacing: 2.0) {
              Text3D(text: "12", color1: Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)), color2: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), font: .title)
              Text("/200")
                .font(.footnote)
                .c()
                .offset(y: -4.0)
            }
            Image("chest")
              .resizable()
              .frame(width: 100.0, height: 100.0)
            HStack {
              Text("Collection")
              Image(systemName: "chevron.right")
            }
            .font(.caption)
            .b()
          }
          .frame(width: 100.0)
          .padding()
          .z()
          .cornerRadius(6.0)
          
          VStack {
            Text("Quest Power")
              .font(.caption)
              .b()
            Text3D(text: "1234", color1: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), color2: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), font: .title)
            Image("chest")
              .resizable()
              .frame(width: 100.0, height: 100.0)
            HStack {
              Text("Quest")
              Image(systemName: "chevron.right")
            }
            .font(.caption)
            .b()
          }
          .frame(width: 100.0)
          .padding()
          .z()
          .cornerRadius(6.0)
          
          VStack {
            Text("Frames Bought")
              .font(.caption)
              .b()
            HStack(alignment: .bottom, spacing: 2.0) {
              Text3D(text: "12", color1: Color(#colorLiteral(red: 0.4191277027, green: 0.2981548607, blue: 0.1639359593, alpha: 1)), color2: Color(#colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)), font: .title)
              Text("/800")
                .font(.footnote)
                .c()
                .offset(y: -4.0)
            }
            Image("chest")
              .resizable()
              .frame(width: 100.0, height: 100.0)
            HStack {
              Text("Collection")
              Image(systemName: "chevron.right")
            }
            .font(.caption)
            .b()
          }
          .frame(width: 100.0)
          .padding()
          .z()
          .cornerRadius(6.0)
          
          VStack {
            Text("Platinum Points")
              .font(.caption)
              .b()
            Text3D(text: "2", color1: Color(#colorLiteral(red: 0.5614356995, green: 0.7546491623, blue: 0.7423124909, alpha: 1)), color2: Color(#colorLiteral(red: 0.7567834854, green: 1, blue: 0.9758049846, alpha: 1)), font: .title)
            Image("chest")
              .resizable()
              .frame(width: 100.0, height: 100.0)
            HStack {
              Text("Details")
              Image(systemName: "chevron.right")
            }
            .font(.caption)
            .b()
          }
          .frame(width: 100.0)
          .padding()
          .z()
          .cornerRadius(6.0)
        }
      }
    }
  }
  
  var gemsView: some View {
    Group {
      Text("YOUR GEMS")
        .fontWeight(.light)
        .font(.caption)
        .b()
      VStack(spacing: 4.0) {
        HStack {
          gemDisplay(.red)
          //Spacer()
          gemDisplay(.green)
          //Spacer()
          gemDisplay(.blue)
        }
        HStack {
          gemDisplay(.yellow)
          //Spacer()
          gemDisplay(.cyan)
          //Spacer()
          gemDisplay(.pink)
        }
        HStack {
          gemDisplay(.orange)
          Spacer()
          gemDisplay(.lime)
          Spacer()
          gemDisplay(.spring)
        }
        HStack {
          gemDisplay(.azure)
          Spacer()
          gemDisplay(.violet)
          Spacer()
          gemDisplay(.rose)
        }
      }
      .padding()
    }
  }
  
  func gemDisplay(_ gem: Gem) -> some View {
    HStack(spacing: 0.0) {
      Image("chest")
        .resizable()
        .frame(width: 40.0, height: 40.0)
      VStack(alignment: .leading) {
        Text("\(g.p.gems[gem] ?? -1)")
          .fontWeight(.bold)
        Text(gem.rawValue)
          .foregroundColor(Theme.b)
          .font(.caption) +
        Text(" T\(gem.tier)")
          .fontWeight(.black)
          .font(Font.system(size: 8.0))
          .foregroundColor(Theme.c)
      }
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
          
          Divider()
          
          chestsAvailableView
          
          Divider()
          
          progressView
          
          Divider()
          
          gemsView
          
          Spacer()
            .height(50.0)
        }
        .padding()
      }
      
      VStack {
        
        Spacer()
        
        VStack(alignment: .center) {
          Text("Tap for money!")
            .fontWeight(.bold)
        }
        .maxWidth(.infinity)
        .padding(24.0)
        .foregroundColor(.white)
        .background(Color(#colorLiteral(red: 0.1960784314, green: 0.8431372549, blue: 0.2941176471, alpha: 1)))
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
