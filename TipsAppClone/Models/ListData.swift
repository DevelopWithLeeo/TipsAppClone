//
//  ListData.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/4/25.
//

import SwiftUI

struct Constants {
    
    struct Strings {
        
        static let sectionNames = ["Get Started","Get Started","Get Started", "What's New", "What's New", "Discover More","Discover More","Discover More","Discover More", "User Guide"]
        
        static let titles = ["Setup checklist", "Navigate your iPhone", "Practice key gestures", "What's new in iOS 18", "Apple Intelligence", "Celebrate Earth Day", "Personalize your iPhone", "Genius Picks", "Keep in touch", "AirPods"]
        
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
            "checkmark.rectangle.stack",
            "apps.iphone",
            "hand.draw",
            "apple.intelligence",
            "apple.intelligence",
            "globe.americas",
            "heart",
            "atom",
            "message",
            "airpods",
        ]
        static let filledIcons = [
            "checkmark.rectangle.stack.fill",
            "apps.iphone",
            "hand.draw.fill",
            "apple.intelligence",
            "apple.intelligence",
            "globe.americas.fill",
            "heart.fill",
            "atom",
            "message.fill",
            "airpods",
        ]
    }
    
    struct Images {
        static let images = [
            ["Image_1", "Image_2", "Image_3", "Image_4"],
            ["Image_1", "Image_2", "Image_3", "Image_4"],
            ["Image_1", "Image_2", "Image_3", "Image_4"],
            ["Image_1", "Image_2", "Image_3", "Image_4"],
            ["Image_1", "Image_2", "Image_3", "Image_4"],
            ["Image_1", "Image_2", "Image_3", "Image_4", "Image_5"],
            ["Image_1", "Image_2", "Image_3", "Image_4"],
            ["Image_1", "Image_2", "Image_3", "Image_4"],
            ["Image_1", "Image_2", "Image_3", "Image_4"],
            ["Image_1", "Image_2", "Image_3", "Image_4"],

            
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
            [Color(.green), Color(.yellow)],
            [Color(.blue), Color(.mint)],
            [Color(.indigo), Color(.blue)],
            [Color(.blue), Color(.cyan)],
            [Color(.red), Color(.orange)],
            [Color(.green), Color(.mint)],
            [Color(.purple), Color(.pink)],
            [Color(.indigo), Color(.cyan)],
            [Color(.green), Color(.yellow)],
            [Color(.indigo), Color(.blue)],
        ]
    }
}




let mainItems: [MainItem] = Constants.Strings.titles.enumerated().map {
    index, title in
    MainItem(title: title, subtitle: Constants.Strings.subtitles[index], sectionName: Constants.Strings.sectionNames[index], icon: Constants.Icons.icons[index], filledIcon: Constants.Icons.filledIcons[index], gradient: Constants.Gradients.gradients[index], detailItemList: detailItems[index], isWebView: false)
}

let detailItems: [[DetailItem]] = Constants.Strings.detailTitles.enumerated().map { index, detailTitleList in
    detailTitleList.enumerated().map { i, detailTitle in
        DetailItem(detailTitle: detailTitle, content: Constants.Strings.contents[index][i], image: Constants.Images.images[index][i])
    }
}



