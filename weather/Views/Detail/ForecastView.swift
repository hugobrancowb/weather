//
//  ForecastView.swift
//  weather
//
//  Created by Hugo Branco on 15/12/22.
//

import SwiftUI

struct ForecastView: View {
  var body: some View {
    ScrollView {

    }
    .backgroundBlur(radius: 25, isOpaque: true)
    .background(Color.bottomSheetBackground)
    .clipShape(RoundedRectangle(cornerRadius: 44))
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
