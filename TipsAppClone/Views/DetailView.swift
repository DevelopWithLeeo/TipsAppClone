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
    
        if let mainItem = mainItems.first(where: {$0.id == selectedMainItem}) {
            TabView(selection: $selectedDetailItem) {
                ForEach(mainItem.detailItemList) {detailItem in
                    DetailItemView(imageName: detailItem.image)
                        .tag(detailItem.id)
                }
            }
            .tabViewStyle(.page)
        } else {
            Text("Select an item")
                .foregroundStyle(.secondary)
        }
    }
}


struct DetailItemView: View {
    let imageName: String
    var body: some View {
        Image(imageName)
    }
}

//#Preview {
//    DetailView()
//}
