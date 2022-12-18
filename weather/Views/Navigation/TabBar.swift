//
//  TabBar.swift
//  weather
//
//  Created by Hugo Branco on 15/12/22.
//

import SwiftUI

struct TabBar: View {
  var action: () -> Void

  var body: some View {
    ZStack {
      Arc()
        .fill(Color.tabBarBackground)
        .frame(height: 88)
        .overlay {
          Arc()
            .stroke(Color.tabBarBorder, lineWidth: 0.5)
        }

      HStack {
        Button {
          action()
        } label: {
          Image(systemName: "mappin.and.ellipse")
            .frame(width: 44, height: 44)
        }

        Spacer()

        Button {
          action()
        } label:{
          Image(systemName: "list.star")
            .frame(width: 44, height: 44)
        }
      }
      .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
      .foregroundColor(.white)
    }
    .frame(maxHeight: .infinity, alignment: .bottom)
    .ignoresSafeArea()
  }
}

struct MyPreviewProvider_Previews: PreviewProvider {
  static var previews: some View {
    TabBar(action: {}).preferredColorScheme(.dark)
  }
}
