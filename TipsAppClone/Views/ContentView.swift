//
//  ContentView.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//

import SwiftUI

struct ContentView: View {
    @Binding var selectedMainItem: MainItem.ID?
    @Binding var selectedDetailItem: DetailItem.ID?
    
    var body: some View {
        
        if let mainItem = mainItems.first(where: { isSelectedMainItem(mainItem: $0)}) {
            
            List(selection: $selectedDetailItem) {
                Section {
                    GradientHeader(mainItem: mainItem)
                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                }
                
                ForEach(mainItem.detailItemList) {detail in
                    NavigationLink(value: detail.id) {
                        ContentItemView(
                            detailTitle: detail.detailTitle,
                            content: detail.content,
                            image: detail.image)
                    }
                }
            }
        }
    }
    func isSelectedMainItem(mainItem: MainItem) -> Bool {
        return mainItem.id == selectedMainItem
    }
}


struct ContentItemView: View {
    
    let detailTitle: String
    let content: String
    let image: String
    
    
    var body: some View {
            HStack {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: ViewConstants.smallImageWidth, height: ViewConstants.smallImageHeight)
                    .padding()
                
                VStack(alignment: .leading) {
                    Text(detailTitle)
                        .font(.headline)
                    Text(content)
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                        .lineLimit(3)
                }
                .padding(.horizontal, ViewConstants.smallPadding)
            }
    }
}
