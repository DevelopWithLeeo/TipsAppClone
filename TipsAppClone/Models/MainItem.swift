//
//  MainItem.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//

import Foundation
import SwiftUI

struct MainItem: Identifiable {
    let id: UUID
    var title: String
    var subtitle: String
    var icon: String
    var color: Color
    var detailItemList: [DetailItem]
    var isCountable: Bool
    var isWebView: Bool
}
