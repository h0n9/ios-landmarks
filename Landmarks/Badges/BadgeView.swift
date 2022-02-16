//
//  BadgeView.swift
//  Landmarks
//
//  Created by h0n9 on 2022/02/17.
//

import SwiftUI

struct BadgeView: View {
    var badgeSymbols: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbolView(
                angle: .degrees(Double(index) / Double(8)) * 360.0
            )
        }
    }
    
    var body: some View {
        ZStack {
            BadgeBackgroundView()
                    
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
