//
//  HomeView.swift
//  weather
//
//  Created by Hugo Branco on 15/12/22.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    ZStack {
      Color.background.ignoresSafeArea()

      Image("Background")
        .resizable()
        .ignoresSafeArea()

      Image("House").frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .padding(.bottom, 120)

      VStack {
        Text("Montreal")
          .font(.largeTitle)

        Text("19º")

        Text("Mostly clear")

        Text("H:24º   L:18º").font(.title3.weight(.semibold))

        Spacer()
      }
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView().preferredColorScheme(.dark)
  }
}

