//
//  ForecastView.swift
//  weather
//
//  Created by Hugo Branco on 15/12/22.
//

import SwiftUI

struct ForecastView: View {
  @State private var selection = 0
  var bottomSheetTranslationProrated: CGFloat = 1;

  var body: some View {
    ScrollView {
      VStack(spacing: 0) {
        // MARK: Segmented Control
        SegmentedControl(selection: $selection)

        // MARK: Forecast cards
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(spacing: 12) {
            if selection == 0 {
              ForEach(Forecast.hourly) { forecast in
                ForecastCard(forecast: forecast, forecastPeriod: .hourly)
              }
              .transition(.offset(x: -UIScreen.main.bounds.width - 32))
            } else {
              ForEach(Forecast.weekly) { forecast in
                ForecastCard(forecast: forecast, forecastPeriod: .daily)
              }
              .transition(.offset(x: UIScreen.main.bounds.width + 32))
            }
          }
          .padding(.vertical, 20)
        }
        .padding(.horizontal, 20)

        // MARK: Forecast widgets
        Image("Forecast Widgets")
          .offset(y: -bottomSheetTranslationProrated * 150 + 50)
      }
    }
    .backgroundBlur(radius: 25, isOpaque: true)
    .background(Color.bottomSheetBackground)
    .clipShape(RoundedRectangle(cornerRadius: 44))
    .innerShadow(shape: RoundedRectangle(cornerRadius: 44), color: Color.bottomSheetBorderMiddle, offsetY: 1, blur: 0, blendMode: .overlay, opacity: 1 - bottomSheetTranslationProrated)
    .overlay {
      Divider()
        .blendMode(.overlay)
        .background(Color.bottomSheetBorderTop)
        .frame(maxHeight: .infinity, alignment: .top)
        .clipShape(RoundedRectangle(cornerRadius: 44))
    }
    .overlay {
      RoundedRectangle(cornerRadius: 10)
        .fill(.black.opacity(0.3))
        .frame(width: 48, height: 5)
        .frame(height: 20)
        .frame(maxHeight: .infinity, alignment: .top)
    }
  }
}

struct ForecastView_Previews: PreviewProvider {
  static var previews: some View {
    ForecastView()
      .background(Color.background)
      .preferredColorScheme(.dark)
  }
}
