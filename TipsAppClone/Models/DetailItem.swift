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
    var smallImage: String?        // 예: 썸네일 이미지 이름
    var largeImage: String?        // 예: 전체 화면 이미지 이름
    var button: [ButtonItem]         // 버튼 정보
    var isSetupCheckList: Bool     // 설정 관련 체크리스트 여부
    var icon: String?              // 아이콘 (SF Symbol 등)
    var isCompleted: Bool          // 사용자가 완료 표시한 항목
    var isSaved: Bool              // 저장 여부 (즐겨찾기 등)
}
