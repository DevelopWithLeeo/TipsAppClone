//
//  Colors.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//

import Foundation
import SwiftUI

struct AppGradients {
    static let greenToYellow = LinearGradient(colors: [.green, .yellow], startPoint: .bottomLeading, endPoint: .topTrailing)
    static let blueToGreen = LinearGradient(colors: [.blue, .green], startPoint: .bottomLeading, endPoint: .topTrailing)
    static let blueToCyan = LinearGradient(colors: [.blue, .cyan], startPoint: .bottomLeading, endPoint: .topTrailing)
    static let redToOrange = LinearGradient(colors: [.red, .orange], startPoint: .bottomLeading, endPoint: .topTrailing)
    static let orangeToYellow = LinearGradient(colors: [.orange, .yellow], startPoint: .bottomLeading, endPoint: .topTrailing)
    static let purpleToPink = LinearGradient(colors: [.purple, .pink], startPoint: .bottomLeading, endPoint: .topTrailing)
    static let cyanToTeal = LinearGradient(colors: [.cyan.opacity(0.8), .teal.opacity(0.6)], startPoint: .bottomLeading, endPoint: .topTrailing)
    static let indigoToBlue = LinearGradient(colors: [.indigo, .blue], startPoint: .bottomLeading, endPoint: .topTrailing)

}
