//
//  Item.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//

import SwiftUI


struct MainItem: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let icon: Image
    let gradient: LinearGradient
    let detailItemList: [DetailItem]
    let isWebView: Bool
}


struct DetailItem: Identifiable {
    let id = UUID()
    let detailTitle: String
    let content: String
    let image: Image
    let isCompleted: Bool = false
    let isSaved: Bool = false
}
