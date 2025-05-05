//
//  Item.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//

import SwiftUI


struct MainItem: Identifiable, Hashable {
    
    let id = UUID()
    let title: String
    let subtitle: String
    let icon: String
    let gradient: [Color]
    let detailItemList: [DetailItem]
    let isWebView: Bool
}


struct DetailItem: Identifiable, Hashable {
    let id = UUID()
    let detailTitle: String
    let content: String
    let image: String
    let isCompleted: Bool = false
    let isSaved: Bool = false
}
