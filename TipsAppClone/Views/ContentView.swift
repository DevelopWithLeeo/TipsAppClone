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
        // mainItem을 detail뷰로 넘겨줘야함
        if let mainItem = mainItems.first(where: { $0.id == selectedMainItem}) {
            List(mainItem.detailItemList, selection: $selectedDetailItem) {
                detail in ContentItemView(detailTitle: detail.detailTitle, content: detail.content, image: detail.image)
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
            Image("Image_1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60)
                .padding()
            
            VStack(alignment: .leading) {
                Text(detailTitle)
                    .font(.headline)
                Text(content)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundStyle(.gray)
        }
    }
}
