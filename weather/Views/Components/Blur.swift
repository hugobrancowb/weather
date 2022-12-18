//
//  Blur.swift
//  weather
//
//  Created by Hugo Branco on 15/12/22.
//

import SwiftUI

class UIBackdropView: UIView {
  override class var layerClass: AnyClass {
    NSClassFromString("CABackdropLayer") ?? CALayer.self
  }
}

struct Backdrop: UIViewRepresentable {
  func makeUIView(context: Context) -> UIBackdropView {
    UIBackdropView()
  }

  func updateUIView(_ uiView: UIBackdropView, context: Context) {}
}

struct Blur: View {
  var radius: CGFloat = 3.0
  var isOpaque: Bool = false

  var body: some View {
    Backdrop().blur(radius: radius, opaque: isOpaque)
  }
}

struct Blur_Previews: PreviewProvider {
  static var previews: some View {
    Blur()
  }
}
