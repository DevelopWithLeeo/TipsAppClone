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
        
        NavigationView {
            
            if let mainItem = mainItems.first(where: {$0.id == selectedMainItem}) {
                TabView(selection: $selectedDetailItem) {
                    ForEach(mainItem.detailItemList) {detailItem in
                        DetailItemView(detail: detailItem)
                            .tag(detailItem.id)
                    }
                }
                .ignoresSafeArea()
                .tabViewStyle(.page)
                .toolbar {
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
                .navigationTitle(mainItem.title)
                .navigationBarTitleDisplayMode(.inline)
                
                
            } else {
                Text("Select an item")
                    .foregroundStyle(.secondary)
                
            }

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

//#Preview {
//    DetailView()
//}
