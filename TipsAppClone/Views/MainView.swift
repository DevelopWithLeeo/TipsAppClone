//
//  ContentView.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        NavigationSplitView {
            SidebarView()
        } content: {
            ContentView()
        } detail: {
            DetailView()
        }
    }
}



#Preview {
    MainView()
}
