//
//  CustomGradientView.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/7/25.
//

import SwiftUI

struct CustomGradientView: View, ShapeStyle {
    let colors: [Color]
    var isVertical: Bool = false
    var body: some View {
    
        LinearGradient(
            colors: colors,
            startPoint: isVertical ? .bottom : .bottomLeading,
            endPoint: isVertical ? .top : .topTrailing
        )
    }

}
