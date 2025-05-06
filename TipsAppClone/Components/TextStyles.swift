//
//  TextStyles.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/7/25.
//


import SwiftUI

struct TitleText: View {
    let text: String

    var body: some View {
        Text(text)
            .textCase(nil)
            .font(.title3.bold())
            .foregroundColor(.primary)
            .padding(.bottom, 4)
    }
}

struct SubtitleText: View {
    let text: String

    var body: some View {
        Text(text)
            .font(.subheadline)
            .foregroundColor(.secondary)
    }
}
