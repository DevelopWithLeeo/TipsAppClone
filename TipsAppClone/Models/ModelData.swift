//
//  ModelData.swift
//  TipsAppClone
//
//  Created by 우정아 on 5/5/25.
//

import SwiftUI

struct Constants {
    
    struct Strings {
        
        static let sectionNames = ["시작하기", "새로운 기능", "더 찾아보기", "사용 설명서"]
        
        static let titles = ["설정 체크리스트", "iPhone 탐색하기", "주요 제스처 연습하기", "iOS 18의 새로운 기능", "Apple Intelligence", "Celebrate Earth Day", "Personalize your iPhone", "Genius Picks", "Keep in touch", "AirPods"]
        
        static let subtitles = ["Start here to set up your iPhone.", "Discover gesture to navigate your iPhone with ease.", "Learn how to drag, zoom, select text, and more.", "Discover new ways to customize your iPhone, stay connected, and relive your favorite moments.", "Use Apple's built-in personal intelligence to help enhance your writing, create unique images, and more.", "Enjoy nature and learn about planet-friendly actions you can take with iPhone.", "Learn how to get creative with your Lock Screen, sounds, and settings.", "Discover hidden gems from our experts.", "Discover ways to use Messages and FaceTime to stay connected.", "Learn how to use your AirPods toplay music, get ambient background sounds, and more."]
        
        static let detailTitles = [
            ["detail_title_1","detail_title_2","detail_title_3","detail_title_4",],["detail_title_1","detail_title_2","detail_title_3","detail_title_4",],["detail_title_1","detail_title_2","detail_title_3","detail_title_4",],["detail_title_1","detail_title_2","detail_title_3","detail_title_4",],["detail_title_1","detail_title_2","detail_title_3","detail_title_4",],
            ["What's that plant?", "Download a map before you go", "Take public transit with a tap", "Set it and forget it", "Recycle old electronics"],
            ["detail_title_1","detail_title_2","detail_title_3","detail_title_4",],
            ["detail_title_1","detail_title_2","detail_title_3","detail_title_4",],
            ["detail_title_1","detail_title_2","detail_title_3","detail_title_4",],
            ["detail_title_1","detail_title_2","detail_title_3","detail_title_4",]
        ]
        
        static let contents = [
            ["content_1","content_2","content_3","content_4",],
            ["content_1","content_2","content_3","content_4",],
            ["content_1","content_2","content_3","content_4",],
            ["content_1","content_2","content_3","content_4",],
            ["content_1","content_2","content_3","content_4",],
            ["Use iPhone to identify plants - and learn about your local ecosystem on your next walk. In the Photos app, open a photo of a plant, then tap", "Find your way — even when you don't have internet connection. In Maps, touch and hold to drop a pin, tap Download, then drag to set the area of the map.", "Skip the car when you can. Add a transit card to the Wallet app so it's always with you - and even add money to it on the go. Tap +, then tap Transit Card.", "Save electricity by scheduling your smart devices — for example, set your thermostat to turn off heat or AC when you're not at home. To get started, open the Home app, then tap Automation.", "Clear out old devices — even if they're not from Apple. Precious materials are kept out of landfills and reused in new products."],
            ["content_1","content_2","content_3","content_4",],
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
            Image(systemName: "apple.intelligence"),
            Image(systemName: "apple.intelligence"),
            Image(systemName: "apple.intelligence"),
            Image(systemName: "apple.intelligence"),
            Image(systemName: "apple.intelligence"),
            Image(systemName: "apple.intelligence")
        ]
    }
    
    struct Images {
        static let images = [
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            [Image("Image_1"),Image("Image_1"),Image("Image_1"),Image("Image_1")],
            
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
            LinearGradient(colors: [.green, .yellow], startPoint: .topTrailing, endPoint: .bottomLeading),
            LinearGradient(colors: [.blue, .mint], startPoint: .topTrailing, endPoint: .bottomLeading),
            LinearGradient(colors: [.indigo, .blue], startPoint: .topTrailing, endPoint: .bottomLeading),
            LinearGradient(colors: [.blue, .green], startPoint: .topTrailing, endPoint: .bottomLeading),
            LinearGradient(colors: [.blue, .green], startPoint: .topTrailing, endPoint: .bottomLeading),
            LinearGradient(colors: [.blue, .green], startPoint: .topTrailing, endPoint: .bottomLeading),
            LinearGradient(colors: [.blue, .green], startPoint: .topTrailing, endPoint: .bottomLeading),
            LinearGradient(colors: [.blue, .green], startPoint: .topTrailing, endPoint: .bottomLeading),
            LinearGradient(colors: [.blue, .green], startPoint: .topTrailing, endPoint: .bottomLeading),
            LinearGradient(colors: [.blue, .green], startPoint: .topTrailing, endPoint: .bottomLeading),
        ]
    }
}

let sectionMapping = [0, 0, 0, 1, 1, 2, 2, 2, 2, 3]


let mainItems: [MainItem] = Constants.Strings.titles.enumerated().map {
    index, title in
    MainItem(title: title, subtitle: Constants.Strings.subtitles[index], icon: Constants.Icons.icons[index], gradient: Constants.Gradients.gradients[index], detailItemList: detailItems[index], isWebView: false, section: Constants.Strings.sectionNames[sectionMapping[index]])
}

let detailItems: [[DetailItem]] = Constants.Strings.detailTitles.enumerated().map { index, detailTitleList in
    detailTitleList.enumerated().map { i, detailTitle in
        DetailItem(detailTitle: detailTitle, content: Constants.Strings.contents[index][i], image: Constants.Images.images[index][i])
    }
}

