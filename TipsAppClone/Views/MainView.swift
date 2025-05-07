//
//  ContentView.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//

import SwiftUI

struct MainView: View {
    
    @State private var selectedMainItem: MainItem.ID?
    @State private var selectedDetailItem: DetailItem.ID?
    
    var body: some View {
        
        NavigationSplitView {
            SidebarView(selectedMainItem: $selectedMainItem)
        } content: {
            ContentView(selectedMainItem: $selectedMainItem ,selectedDetailItem: $selectedDetailItem)
        } detail: {
            DetailView(selectedMainItem: $selectedMainItem, selectedDetailItem: $selectedDetailItem)
        }
    }
}



#Preview {
    MainView()
    MainView()
}
