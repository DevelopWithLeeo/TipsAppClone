//
//  GradientHeaderView.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/7/25.
//

import SwiftUI

struct GradientHeader: View {
    
    let mainItem: MainItem
    let height = ViewConstants.headerHeight
    
    var body: some View {
        
        GeometryReader {geo in
            
            let offset = geo.frame(in: .global).minY
            ZStack(alignment: .bottom) {
                
                LinearGradientView(
                    gradient: mainItem.gradient,
                    offset: offset,
                    height: height
                )
                MaskingGradientView()
                IconAndTitleView(mainItem: mainItem)
                
            }
        }
        .frame(height: height)
    }
}

struct LinearGradientView: View {
    let gradient: [Color]
    let offset:  CGFloat
    let height: CGFloat
    
    var body: some View {
        LinearGradient(
            colors: gradient,
            startPoint: .bottomLeading,
            endPoint: .topTrailing
        )
        .frame(height: offset > 0 ? height + offset : height)
        .offset(y: offset > 0 ? -offset : 0)
    }
}


struct MaskingGradientView: View {
    var body: some View {
        LinearGradient(
            colors: [.white, .white.opacity(0)],
            startPoint: .bottom,
            endPoint: .top
        )
        .frame(height: ViewConstants.gradientHeight)
        .mask {
            LinearGradient(
                colors: [.black, .clear],
                startPoint: .bottom,
                endPoint: .top
            )
        }
    }
}

struct IconAndTitleView: View {
    
    let mainItem: MainItem
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: ViewConstants.headerPaddingTop)
            Image(systemName: mainItem.icon)
                .resizable()
                .frame(width: ViewConstants.iconWidth)
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.white)
            Text(mainItem.title)
                .font(.title.bold())
                .padding(.bottom, ViewConstants.smallPadding)
                .foregroundStyle(.white)
            Text(mainItem.subtitle)
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
            Spacer()
        }
        .padding()
    }
}
