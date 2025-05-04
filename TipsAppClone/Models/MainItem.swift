//
//  MainItem.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//

import SwiftUI

struct MainItem: Identifiable {
    let id: UUID
    var title: String
    var subtitle: String
    var icon: String
    var color: LinearGradient
    var detailItemList: [DetailItem]
    var isCountable: Bool
    var isWebView: Bool
    var section: String
}

extension MainItem {
    
    static let defaultItem: [MainItem] = [
        MainItem(id: UUID(), title: "설정 체크리스트", subtitle: "iPhone을 설정하려면 이것부터 시작해보세요.", icon: "checkmark.rectangle.stack",
                 color: AppGradients.greenToYellow, detailItemList: [], isCountable: true, isWebView: false, section: "시작하기"),
        MainItem(id: UUID(), title: "iPhone 탐색하기", subtitle: "", icon: "apps.iphone",
                 color: AppGradients.blueToGreen, detailItemList: [], isCountable: false, isWebView: false, section: "시작하기"),
        MainItem(id: UUID(), title: "주요 제스처 연습하기", subtitle: "", icon: "hand.draw",
                 color: AppGradients.blueToCyan, detailItemList: [], isCountable: false, isWebView: false, section: "시작하기"),
        MainItem(id: UUID(), title: "Apple Intellignece", subtitle: "", icon: "apple.intelligence",
                 color: AppGradients.redToOrange, detailItemList: [], isCountable: false, isWebView: false, section: "새로운 기능"),
        MainItem(id: UUID(), title: "사진 및 카메라", subtitle: "", icon: "camera",
                 color: AppGradients.orangeToYellow, detailItemList: [], isCountable: false, isWebView: false, section: "더 찾아보기"),
        MainItem(id: UUID(), title: "iPhone 개인 맞춤화하기", subtitle: "", icon: "heart",
                 color: AppGradients.purpleToPink, detailItemList: [], isCountable: false, isWebView: false, section: "더 찾아보기"),
        MainItem(id: UUID(), title: "Airpods", subtitle: "", icon: "airpods.pro",
                 color: AppGradients.cyanToTeal, detailItemList: [], isCountable: false, isWebView: false, section: "사용자의 기기"),
        MainItem(id: UUID(), title: "iPhone", subtitle: "", icon: "iphone.gen3",
                 color: AppGradients.indigoToBlue, detailItemList: [], isCountable: false, isWebView: true, section: "사용 설명서"),
        MainItem(id: UUID(), title: "Airpods", subtitle: "", icon: "airpods.pro",
                 color: AppGradients.indigoToBlue, detailItemList: [], isCountable: false, isWebView: true, section: "사용 설명서")
    ]
}
