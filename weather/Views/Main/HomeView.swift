//
//  HomeView.swift
//  weather
//
//  Created by Hugo Branco on 15/12/22.
//

import SwiftUI
import BottomSheet

enum BottomSheetPosition: CGFloat, CaseIterable {
  case top = 0.83
  case middle = 0.385
}

struct HomeView: View {
  @State var bottomSheetPosition: BottomSheetPosition = .middle

  var body: some View {
    NavigationView {
      ZStack {
        Color.background.ignoresSafeArea()

        Image("Background")
          .resizable()
          .ignoresSafeArea()

        Image("House").frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
          .padding(.bottom, 120)

        // MARK: Weather information
        VStack {
          Text("Montreal")
            .font(.largeTitle)

          Text("19º")
            .font(.system(size: 93, weight: .thin))
            .padding(.top, -30)
            .padding(.bottom, -15)

          Text("Mostly clear")
            .font(.title3.weight(.semibold))
            .foregroundColor(.secondary)

          Text("H:24º   L:18º")
            .font(.title3.weight(.semibold))
          
          Spacer()
        }


        // MARK: BottomSheet
        BottomSheetView(position: $bottomSheetPosition, header: {}) {
          ForecastView()
        }

        // MARK: TabBar
        TabBar(action: {
          bottomSheetPosition = .top
        })
      }
      .navigationBarHidden(true)
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView().preferredColorScheme(.dark)
  }
}

