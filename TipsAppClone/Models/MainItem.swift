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
    var icon: String          // SF Symbol 이름 혹은 이미지 이름
    var color: Color          // SwiftUI의 Color 사용
    var detailItemList: [DetailItem]
    var isCountable: Bool
    var isWebView: Bool
}
