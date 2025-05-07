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
            ["Add a Recovery Contact","Add a Legacy Contact","Face ID","Apple Account", "iCloud Backup", "Find My iPhone"],
            ["Go straight Home","Keep an eye on active apps","Switch between apps","Open Control Center","See more controls", "See your notifications", "Silence calls and notifications", "Quickly snap a photo","Take a screenshot", "Quickly pay with iPhone", "Explore the user guide" ],
            ["Tap, or touch and hold","Drag to move items","Pinch to zoom","Select and edit text",],
            ["Style your apps","Customize Control Center","Swap out your Lock Screen controls","Say it your way", "React with the perfect emoji", "Schedule a message", "Lock or hide an app", "Relive your trips", "What is Apple Intelligence?"],
            ["Use ChatGPT with Siri","Interact with your surroundings","Make a memory","Create your own emoji", "Transform ideas into images"],
            ["What's that plant?", "Download a map before you go", "Take public transit with a tap", "Set it and forget it", "Recycle old electronics"],
            ["Quickly switch to Dark Mode","Set a photo as your background","Rename your iPhone","See info at a glance while charging", "Keep time in style"],
            ["Quickly play ambient music","Create a podcast queue","Share a podcast from a specific point","Record your screen", "Magnify objects near you"],
            ["Find a specific message","Meet up easily","Leave a video message","Mute a conversation", "Say it with stickers"],
            ["Control audio with a tap","Find misplaced AirPods","Play calming background sounds","Pair with other devices"]
        ]
        
        static let contents = [
            ["Get help if you forget your Apple Account password. To choose someone you trust, go to Settings › your name › Sign-In & Security >","Designate a trusted person who can access your Apple Account after your death. Go to Settings › your name › Sign-In & Security › Legacy Contact.","Face ID is set up. You can glance at your iPhone to securely unlock it, use Apple Pay, and more. You can even add an alternate appearance, like glasses or a mask.","You're signed in. With one account, you can make FaceTime calls, use Find My, get apps, and more.","iCloud Backup is turned on. iCloud automatically makes a copy of your information, in case your iPhone is replaced or lost. To get started, go to Settings > your name › iCloud › iCloud Backup.","Find My iPhone is turned on. To see your devices on a map, open Find My, then tap Devices."],
            ["Swipe up from the bottom edge to go to the Home Screen.","Touch and hold the Dynamic Island to see in-progress timers, music, directions, and more — no matter what app you're in.","To get back to an app you recently used, swipe up and pause, then tap an app to open it.","To quickly change screen brightness, adjust audio, and more, swipe down from the top right.", "In Control Center, you can touch and hold most controls to do more. For example, touch and hold the Flashlight button to adjust the brightness of the flashlight.", "To see a list of notifications that you may have missed, swipe down from the top of the screen.", "To turn on silent mode, press and hold the Action button on the left side of your iPhone. Any Clock alarms you set will still play sound.", "Click the Camera Control to quickly open Camera. To take a photo, click it again. To record a video, click and hold.", "Press and quickly release the side button and the volume up button. Tap the thumbnail to mark up the screenshot or share it — or view it later in Photos.", "Use Apple Pay in stores, restaurants, and more. Double-click the side button, then glance at your iPhone to authenticate with Face ID. When you're ready to pay, hold your iPhone near the reader.", "User guides for all of your devices are available in the Tips app — tap Back, tap Tips, then scroll to the bottom. Go to the iPhone User Guide"],
            ["To open something, like a photo or an app, tap it quickly. To see more options, touch it, then keep holding your finger on the screen. so Try It","Touch and hold an item, then move your finger across the screen. Lift your finger to drop the item. so Try It","Place two fingers on the screen. Pinch open to zoom in, or pinch closed to zoom out.","Touch and hold to select a word, then drag the blue grab points to select more words. Try It"],
            ["To choose a color tint for all your apps, touch and hold the Home Screen, tap Edit, then tap Customize.","Lock or hide an app","Add and rearrange your controls so they're always a swipe away. Open Control Center, then tap +. Drag controls to rearrange them, or tap Add a Control.","Touch and hold the Lock Screen, tap Customize, then tap Lock Screen. Tap © to remove a control, then tap +.", "Express yourself with bold, italics, underline, or strikethrough - or even add animated effects.", "Double-tap any message, then choose an emoji or sticker. Tap © to see more.", "In Messages, tap *, then tap Send Later. Choose a date and time, then tap * to schedule your message.", "Add another layer of privacy. Touch and hold an app, then tap Require Face ID. You can even choose to hide third-party apps.", "Find all your travel photos in one place. Scroll down to Trips, then tap a trip. To see your trip on a map, tap ©, then tap Show Map."],
            ["Plan trips, write stories, create images, and more. For example, say Ask ChatGPT to create an itinerary for a two-day trip to San Francisco, or Use ChatGPT to make a cartoon of the Golden Gate Bridge.","Use your camera to get info about a restaurant, search text that you see, or even find out where to buy an item. Click and hold the Camera Control, point at a place or object, then tap the Capture button or a suggestion.","Use Apple Intelligence to create a custom memory movie of a favorite person, place, event, and more. In Photos, scroll down to Memories, tap Create, then enter a description.", "With Apple Intelligence, you can make a custom Genmoji. Tap ®, tap €, then enter a description. Swipe to choose one, or edit your description and choose another, then tap Add.", "Create fun, original images to share with friends and use in other apps. Go to the Image Playground app, then tap +. Tap suggestions, write a description, or tap ® to add people."],
            ["Use iPhone to identify plants - and learn about your local ecosystem on your next walk. In the Photos app, open a photo of a plant, then tap", "Find your way — even when you don't have internet connection. In Maps, touch and hold to drop a pin, tap Download, then drag to set the area of the map.", "Skip the car when you can. Add a transit card to the Wallet app so it's always with you - and even add money to it on the go. Tap +, then tap Transit Card.", "Save electricity by scheduling your smart devices — for example, set your thermostat to turn off heat or AC when you're not at home. To get started, open the Home app, then tap Automation.", "Clear out old devices — even if they're not from Apple. Precious materials are kept out of landfills and reused in new products."],
            ["Get a better viewing experience in low-light environments. Open Control Center, touch and hold io:, then tap Dark Mode to turn it on or off.","In Photos, tap E, tap Use as Wallpaper, then tap Add. Tap Set as Wallpaper Pair to set your Lock Screen and Home Screen.","Make it easy to identify your iPhone in Find My, CarPlay, and more. In the Settings app, tap General, tap About, then tap Name. Enter a new name, then tap Done.","While your iPhone is charging and on its side, you can see timely widgets, photos, or a clock. To customize the display, touch and hold the screen, then tap +.", "To customize your Lock Screen clock, touch and hold the Lock Screen, then tap Customize. Tap the Lock Screen, then tap the clock to choose a font and color."],
            ["Create an ideal environment for focusing, sleeping, or relaxing. Open Control Center, tap +, then tap Add a Control. Scroll to Ambient Music, then choose a theme.","In the Podcasts app, go to an episode, tap o, then tap Play Next. To add it to the end of your queue instead, tap Add to Queue.","Go to an episode in the Podcasts app and tap ( to view the transcript. Touch and hold the text you want to start sharing from, then tap Share from.","To capture a screen recording, open Control Center, then tap O. If you don't see it, tap +, tap Add a Control, then scroll down and choose Screen Recording.", "You can use the Magnifier app to read the fine print, see in dim lighting, and more. Drag the slider to zoom in. To add more controls, like brightness, tap 02)."],
            ["Swipe down, then enter a name, keyword, or content type. Tap a suggestion or type","Temporarily share your location with someone you're texting, or request theirs. Tap +, then tap Location.","If someone is unavailable for a FaceTime call, you can leave them a video message - just tap Record Video. To review your recording before you send it, tap O.","Take a break from a busy conversation. Swipe left across a Messages conversation, then tap 4.", "In Messages, tap +, tap Stickers, then drag one onto the conversation. To create a sticker from a photo in your library, tap O, then tap ®."],
            ["Double-tap to pause, skip a song, and more. To change what happens when you double-tap, go to Settings, tap your AirPods, then choose Left or Right.","Your AirPods can play a sound if they're nearby, or you can get directions to find them. Go to the Find My app, tap Devices, then tap your AirPods.","To hear ambient sounds, like ocean or rain, open Control Center, tap ®, then tap dod. To change sounds, tap Background Sounds.","To connect AirPods to a non-Apple device, open the lid and hold the button for about 5 seconds, then use the device's Bluetooth controls to pair."]
            
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
            ["Image_1", "Image_2", "Image_3", "Image_4", "Image_5", "Image_4"],
            ["Image_1", "Image_2", "Image_3", "Image_4", "Image_5", "Image_4", "Image_4", "Image_4", "Image_4", "Image_4", "Image_4"],
            ["Image_1", "Image_2", "Image_3", "Image_4"],
            ["Image_1", "Image_2", "Image_3", "Image_4", "Image_5", "Image_4", "Image_4", "Image_4", "Image_4"],
            ["Image_1", "Image_2", "Image_3", "Image_4", "Image_5"],
            ["Image_1", "Image_2", "Image_3", "Image_4", "Image_5"],
            ["Image_1", "Image_2", "Image_3", "Image_4", "Image_5"],
            ["Image_1", "Image_2", "Image_3", "Image_4", "Image_5"],
            ["Image_1", "Image_2", "Image_3", "Image_4", "Image_5"],
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



