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
                
                ZStack(alignment: .bottom) {
                    LinearGradientView(
                        gradient: mainItem.gradient,
                        offset: offset,
                        height: height
                    )
                    
                    MaskingGradientView()
                        .offset(y: offset > 0 ? -offset : 0)
                }
               
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
        CustomGradientView(
            colors: [.white, .white.opacity(0)],
            isVertical: true
        )
        .frame(height: ViewConstants.gradientHeight)
        .mask {
            CustomGradientView(
                colors: [.black, .clear],
                isVertical: true
            )
        }
    }
}

struct IconAndTitleView: View {
    
    let mainItem: MainItem
    
    var body: some View {
        VStack {
            ZStack {
                Image(systemName: mainItem.filledIcon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.white)
            }
            .frame(
                height: ViewConstants.largeIconWidth
            )
            
            TitleText(text: mainItem.title)
                .foregroundStyle(.white)
            
            CalloutText(text: mainItem.subtitle)
                .multilineTextAlignment(.center)
            Spacer()
        }
        .padding()
    }
}
