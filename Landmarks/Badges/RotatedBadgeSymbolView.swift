//
//  RotatedBadgeSymbolView.swift
//  Landmarks
//
//  Created by h0n9 on 2022/02/17.
//

import SwiftUI

struct RotatedBadgeSymbolView: View {
    let angle: Angle
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbolView(angle: Angle(degrees: 5))
    }
}
