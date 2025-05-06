//
//  SidebarVIew.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/5/25.
//

import SwiftUI


struct SidebarView: View {
    @Binding var selectedMainItem: MainItem.ID?
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            List(mainItems, selection: $selectedMainItem) {
                if isFirstMainItem(item: $0) {
                    SectionImage()
                }
                ListRow(text: $0.title, icon: Image(systemName: $0.icon))
            }
        .navigationTitle("Tips")
        }
        .searchable(
            text: $searchText,
            placement: .navigationBarDrawer(displayMode: .always)
        )
    }
}



func isFirstMainItem(item: MainItem) -> Bool {
    return item.id == mainItems.first?.id
}

struct SectionImage: View {
    var body: some View {
        Section {
            Color.gray
                .frame(height: 200)
                .listRowInsets(EdgeInsets())
        }
        
    }
}

struct ListRow: View {
    let text: String
    let icon: Image
    let count: Int = 0
    
    var body: some View {
        HStack {
            icon
            Text(text)
            Spacer()
            Image(systemName: "chevron.forward")
        }
    }
}


//#Preview {
//    SidebarView()
//}
