//
//  SubView.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//

import SwiftUI

struct ContentView: View {
    @Binding var selectedMainItem: MainItem.ID?
    @Binding var selectedDetailItem: DetailItem.ID?
    
    var body: some View {

        ScrollView {
            
            VStack {
                
                if let mainItem = mainItems.first(where: { isSelectedMainItem(mainItem: $0)}) {
                    
                    GradientHeader(mainItem: mainItem)
                    ContentListView(
                        mainItem: mainItem,
                        selectedDetailItem: $selectedDetailItem
                    )
                }
            }
            
        }
        .ignoresSafeArea()

    }
    
    func isSelectedMainItem(mainItem: MainItem) -> Bool {
        return mainItem.id == selectedMainItem
    }
    
}


struct ContentListView: View {
    
    let mainItem: MainItem
    @Binding var selectedDetailItem: DetailItem.ID?
    
    var body: some View {
            LazyVStack(alignment: .leading) {
                ForEach(mainItem.detailItemList) {detail in
                    
                    ZStack {
                        ContentItemViewWithDivider(mainItem: mainItem, detail: detail)
                            .onTapGesture {
                                selectedDetailItem = detail.id
                            }
                        NavigationLink(
                            value: detail.id,
                            label: {EmptyView()}
                        )
                    }

                }
            }
    }
}

struct ContentItemViewWithDivider: View {
    
    let mainItem: MainItem
    let detail: DetailItem
    
    var body: some View {
        VStack {
            ContentItemView(
                detailTitle: detail.detailTitle,
                content: detail.content,
                image: detail.image
            )
            if !(detail.id == mainItem.detailItemList.last?.id) {
                Divider()
                    .padding(.horizontal)
                    .padding(.leading, ViewConstants.dividerPadding)
                
            }
        }
    }
}


struct ContentItemView: View {
    
    let detailTitle: String
    let content: String
    let image: String
    
    
    var body: some View {
            HStack {
                //            Image("Image_1")
                //                .resizable()
                //                .aspectRatio(contentMode: .fit)
                //                .frame(width: 60)
                //                .padding()
                Color.blue
                    .frame(width: ViewConstants.smallImageWidth, height: ViewConstants.smallImageHeight)
                
                VStack(alignment: .leading) {
                    Text(detailTitle)
                        .font(.headline)
                    Text(content)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .lineLimit(3)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
            }
            .padding()
    }
}
