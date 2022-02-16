//
//  FavoriteButtonView.swift
//  Landmarks
//
//  Created by h0n9 on 2022/02/16.
//

import SwiftUI

struct FavoriteButtonView: View {
    @Binding var isSet: Bool // Binding: indicates the button's current state
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButtonView(isSet: .constant(true))
    }
}
