//
//  ModelItem.swift
//  TipsAppClone
//
//  Created by 우정아 on 5/5/25.
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
    let section: String
}


struct DetailItem: Identifiable { 
    let id = UUID()
    let detailTitle: String
    let content: String
    let image: Image
    let isCompleted: Bool = false
    let isSaved: Bool = false
}
