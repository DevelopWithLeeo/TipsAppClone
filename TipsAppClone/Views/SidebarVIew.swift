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
    
    let sectionTitles = Array(NSOrderedSet(array: mainItems.map {$0.sectionName})) as! [String]
    
    var body: some View {
        NavigationView {
            List(selection: $selectedMainItem) {
                if isFirstMainItem(item: mainItems.first!) {
                    SectionImage()
                }
                
                ForEach(sectionTitles, id: \.self) {section in
                    Section(header: TitleSmallText(text: section)) {
                        ForEach(mainItems.filter {$0.sectionName == section }) {
                            item in
                            ListRow(text: item.title, icon: item.icon, gradient: item.gradient)
                        }
                    }
                }
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
            Image("sectionImage")
                .resizable()
                .frame(height: ViewConstants.sectionImageHeight)
                .aspectRatio(contentMode: .fit)
                .listRowInsets(EdgeInsets())
        }
    }
}

struct ListRow: View {
    let text: String
    let icon: String
    let gradient: [Color]
    let count: Int = 0
    
    var body: some View {
        HStack {
            ZStack {
                Color.clear
                    .frame(
                        width: ViewConstants.smallIconWidth,
                        height: ViewConstants.smallIconWidth
                    )
                
                Image(systemName: icon)
                    .font(.title2)
                    .foregroundStyle(
                        
                        LinearGradient(
                            colors: gradient,
                            startPoint: .bottomLeading,
                            endPoint: .topTrailing
                        )
//                        CustomGradientView(colors: gradient)
                    )
            }
            .padding(.leading, -8)
            Text(text)
            Spacer()
            Image(systemName: "chevron.forward")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
}
