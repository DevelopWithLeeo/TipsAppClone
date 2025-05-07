//
//  ImageView.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//


import SwiftUI

struct DetailView: View {
    
    @Binding var selectedMainItem: MainItem.ID?
    @Binding var selectedDetailItem: DetailItem.ID?
    
    var body: some View {
        
        //  selectedDetailItem의 초기값이 올바르게 설정되었는지 확인
        //  TabView가 나타날 때까지 selectedDetailItem이 nil이 아니도록 보장
        
        if let mainItem = mainItems.first(where: {$0.id == selectedMainItem}),
           let validDetailItem = mainItem.detailItemList.first(where: {$0.id == selectedDetailItem})
        {
            TabView(selection: $selectedDetailItem) {
                ForEach(mainItem.detailItemList) {detailItem in
                    DetailItemView(detail: detailItem)
                        .tag(detailItem.id)
                }
            }
            .tabViewStyle(.page)
            .ignoresSafeArea()
            .navigationTitle(mainItem.title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolBarItemContent()
            }
            
            
        } else {
            Text("Select an item")
                .foregroundStyle(.secondary)
            
        }
        
        
    }
}


struct DetailItemView: View {
    let detail: DetailItem
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 64)
            
            Image(detail.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 520)
            
            VStack(alignment: .leading) {
                Text(detail.detailTitle)
                    .font(.title3.bold())
                    .padding(.bottom, ViewConstants.middlePadding)
                Text(detail.content)
                    .font(.body)
            }
            .padding()
            .padding(.horizontal)
            
            Spacer()
        }
    }
}


struct ToolBarItemContent: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            HStack(alignment:.bottom) {
                Group {
                    Image(systemName: "square.and.arrow.up")
                    Spacer()
                        .frame(width: ViewConstants.largePadding)
                    Image(systemName: "bookmark")
                }.foregroundStyle(Color.blue)
            }
        }
    }
}
