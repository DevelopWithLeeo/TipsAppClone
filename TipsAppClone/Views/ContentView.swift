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
                
                GeometryReader {geo in
                    
                    let offset = geo.frame(in: .global).minY
                    
                    LinearGradient(
                        colors: [.blue, .green],
                        startPoint: .bottomLeading,
                        endPoint: .topTrailing
                    )
                    .frame(height: offset > 0 ? 300 + offset : 300)
                    .offset(y: offset > 0 ? -offset : 0)
                }
                .frame(height: 300)
        
                ContentListView(
                    selectedMainItem: $selectedMainItem,
                    selectedDetailItem: $selectedDetailItem
                )
            }
        }
        .ignoresSafeArea()

    }
}

struct ContentListView: View {
    
    @Binding var selectedMainItem: MainItem.ID?
    @Binding var selectedDetailItem: DetailItem.ID?
    
    var body: some View {
        if let mainItem = mainItems.first(where: { $0.id == selectedMainItem}) {
            LazyVStack(alignment: .leading) {
                ForEach(mainItem.detailItemList) {detail in
                    
                    ContentItemViewWithDivider(mainItem: mainItem, detail: detail)

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
                    .padding(.leading, 80)
                
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
                    .frame(width: 80, height: 104)
                
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
