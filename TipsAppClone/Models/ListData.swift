//
//  ListData.swift
//  TipsAppClone
//
//  Created by JiJooMaeng on 5/5/25.
//


import SwiftUI

struct Constants {
    
    struct Strings {
        
        static let sectionNames = ["시작하기", "새로운 기능", "더 찾아보기", "사용자의 기기", "사용 설명서"]
        
        static let titles = ["설정 체크리스트", "iPhone 탐색하기", "주요 제스처 연습하기", "Apple Intelligence", "사진 및 카메라", "iPhone 개인 맞춤화하기", "AirPods", "iPhone", "AirPods"]
        
        static let subtitles = ["iPhone을 설정하려면 이것부터 시작하세요.", "제스처를 찾아보고 iPhone을 손쉽게 탐색해 보세요.", "드래그, 확대/축소, 텍스트 선택 등의 작업을 수행하는 방법을 알아보세요.", "Apple에 내장된 개인형 지능 시스템을 사용하여 글쓰기를 향상하고, 독창적인 이미지를 생성하는 등의 작업을 수행해 보세요.", "최고의 사진을 찍고 소중한 순간을 생생하게 추억하는 방법을 알아보세요.", "잠금 화면, 사운드 및 설정을 창의적으로 구성하는 방법을 알아보세요.", "AirPods Pro를 사용하여 음악을 재생하고, 통화 중에 자신의 마이크를 끄는 등의 작업을 수행하는 방법을 알아보세요."]
        
        static let detailTitles = [
            ["Face ID","Apple 계정","iCloud 백업","나의 iPhone 찾기","복구 연락처 추가하기","유산 관리자 추가하기"],
            ["홈으로 바로 이동하기", "활성화된 앱 확인하기", "앱 전환하기", "제어 센터 열기", "더 많은 제어 항목 보기", "알림 보기", "전화와 알림을 무음으로 설정하기", "사진 빠르게 찍기", "스크린샷 찍기", "사용 설명서 둘러보기"],
            ["탭 또는 길게 터치하기","드래그하여 항목 이동하기","손가락을 펼치거나 오므려서 확대/축소하기","텍스트 선택 및 편집하기",],
            ["detail_title_1","detail_title_2","detail_title_3","detail_title_4",],
            ["detail_title_1","detail_title_2","detail_title_3","detail_title_4",],
            ["What's that plant?", "Download a map before you go", "Take public transit with a tap", "Set it and forget it", "Recycle old electronics"],
            ["detail_title_1","detail_title_2","detail_title_3","detail_title_4",],
            ["detail_title_1","detail_title_2","detail_title_3","detail_title_4",],
            ["detail_title_1","detail_title_2","detail_title_3","detail_title_4",],
            ["detail_title_1","detail_title_2","detail_title_3","detail_title_4",]
        ]
        
        static let contents = [
            ["Face ID가 설정되었습니다.","로그인 되었습니다.","백업 켜져있습니다.","켜져 있습니다.","도움 받으세요.","사망한 경우 접근하세요."],
            ["홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요.", "사용 중인 앱과 상관없이 Dynamic Island를 길게 터치하여 진행 중인 타이머, 음악, 경로 등을 확인하세요.", "최근에 사용한 앱으로 돌아가려면 화면을 쓸어올리고 잠시 멈춘 다음, 앱을 탭하여 미세요.", "화면 오른쪽 상단을 쓸어내려 화면 밝기를 변경하고, 오디오를 조절하는 등의 동작을 빠르게 수행해 보세요.", "제어 센터에서 대부분의 제어 항목을 길게 눌러 더 많은 작업을 수행할 수 있습니다. 예를 들어, 손전등 버튼을 길게 눌러 손전등의 밝기를 조절해 보세요.", "놓쳤을지도 모르는 알림 목록을 확인하려면 화면 상단에서 아래로 쓸어내리세요.", "무음 모드를 켜려면 iPhone 왼쪽 측면에 있는 동작 버튼을 길게 누르세요. 설정해 놓은 시계 앱 알람 소리는 여전히 들을 수 있습니다.", "카메라 제어를 클릭하여 카메라를 빠르게 여세요. 사진을 찍으려면 다시 클릭하세요. 비디오를 녹화하려면 길게 클릭하세요", "측면 버튼과 음량 높이기 버튼을 동시에 누르고 빠르게 손을 떼세요. 썸네일을 탭하여 스크린샷에 마크업을 하거나 스크린 샷을 공유할 수 있습니다. 또는 사진 앱에서 스크린샷을 나중에 볼 수도 있습니다.", "모든 기기의 사용 설명서는 팁 앱에서 제공됩니다. 뒤로를 탬하고 팁을 택한 다음, 하단으로 스크롤하세요."],
            ["사진 또는 앱 등을 열려면 빠르게 하세요. 더 많은 옵션을 보려면 터치한 다음, 손가락으로 화면을 계속 누르고 계세요.", "항목을 길게 터치한 다음, 손가락을 화면 위로 이동 하세요. 손가락을 떼서 항목을 드롭하세요.", "화면에 두 개의 손가락을 놓으세요. 손가락을 펼쳐서 확대하거나 오므려서 축소하세요.", "단어를 길게 터치하여 선택한 다음, 파란색 선택 포인트를 드래그하여 더 많은 단어를 선택하세요.",],
            ["content_1","content_2","content_3","content_4",],
            ["content_1","content_2","content_3","content_4",],
            ["Use iPhone to identify plants - and learn about your local ecosystem on your next walk. In the Photos app, open a photo of a plant, then tap", "Find your way — even when you don't have internet connection. In Maps, touch and hold to drop a pin, tap Download, then drag to set the area of the map.", "Skip the car when you can. Add a transit card to the Wallet app so it's always with you - and even add money to it on the go. Tap +, then tap Transit Card.", "Save electricity by scheduling your smart devices — for example, set your thermostat to turn off heat or AC when you're not at home. To get started, open the Home app, then tap Automation.", "Clear out old devices — even if they're not from Apple. Precious materials are kept out of landfills and reused in new products."],
            ["content_1","content_2","content_3","content_4",],
            ["content_1","content_2","content_3","content_4",],
            ["content_1","content_2","content_3","content_4",]
        ]
        
    }
    
    struct Icons {
        static let icons = [
            Image(systemName: "checkmark.rectangle.stack"),
            Image(systemName: "apps.iphone"),
            Image(systemName: "hand.draw"),
            Image(systemName: "apple.intelligence"),
            Image(systemName: "camera"),
            Image(systemName: "heart"),
            Image(systemName: "airpods.pro"),
            Image(systemName: "iphone.gen3"),
            Image(systemName: "airpods.pro")
        ]
    }
    
    struct Images {
        static let images = [
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("navigate_1"),Image("navigate_2"),Image("navigate_3"),Image("navigate_4"),Image("navigate_5"),Image("navigate_6"),Image("navigate_7"),Image("navigate_8"),Image("navigate_9"),Image("navigate_10")],
            [Image("gesture_1"),Image("gesture_2"),Image("gesture_3"),Image("gesture_4")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")]
        ]
    
    }
    struct SetUpChecklistIcons {
        static let icons = [
            Image(systemName: "faceid"),
            Image(systemName: "faceid"),
            Image(systemName: "faceid"),
            Image(systemName: "faceid"),
            Image(systemName: "faceid"),
            Image(systemName: "faceid"),
        ]
    }
    
    struct Gradients {
        static let gradients = [
            AppGradients.greenToYellow,
            AppGradients.blueToGreen,
            AppGradients.blueToCyan,
            AppGradients.redToOrange,
            AppGradients.orangeToYellow,
            AppGradients.purpleToPink,
            AppGradients.cyanToTeal,
            AppGradients.indigoToBlue,
            AppGradients.indigoToBlue
        ]
    }
}




//let mainItems: [MainItem] = Constants.Strings.titles.enumerated().map {
//    index, title in
//    MainItem(title: title, subtitle: Constants.Strings.subtitles[index], icon: Constants.Icons.icons[index], gradient: Constants.Gradients.gradients[index], detailItemList: detailItems[index], isWebView: false)
//}
//
//let detailItems: [[DetailItem]] = Constants.Strings.detailTitles.enumerated().map { index, detailTitleList in
//    detailTitleList.enumerated().map { i, detailTitle in
//        DetailItem(detailTitle: detailTitle, content: Constants.Strings.contents[index][i], image: Constants.Images.images[index][i])
//    }
//}
