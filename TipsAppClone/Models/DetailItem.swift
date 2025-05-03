//
//  DetailItem.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/3/25.
//

import Foundation
import SwiftUI

struct DetailItem: Identifiable {
    let id: UUID
    var title: String
    var content: String
    var smallImage: String?
    var largeImage: String?
    var button: [ButtonItem]
    var isSetupCheckList: Bool
    var icon: String?
    var isCompleted: Bool
    var isSaved: Bool
}
