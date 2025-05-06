//
//  DetailView.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//

import SwiftUI

struct DetailView: View {
    let mainIndex: Int
    let subIndex: Int
    @State private var selection = 0
    
    var body: some View {
        NavigationStack {
            TabView(selection: $selection) {
                ForEach(0..<Constants.Images.images[mainIndex].count, id: \.self) { i in
                    VStack {
                        Constants.Images.images[mainIndex][i]
                            .resizable()
                            .scaledToFit()
                            .frame(height: 500)
                        
                        VStack(alignment: .leading) {
                            Text(Constants.Strings.detailTitles[mainIndex][i])
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.bottom, 6)
                            Text(Constants.Strings.contents[mainIndex][i])
                                .font(.system(size: 14))
                                .lineLimit(3)
                        }
                        .padding(.top, 20)
                        .padding(.horizontal, 30)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    .tag(i)
                }
            }
            .tabViewStyle(.page)
        }
        .navigationTitle(Text(Constants.Strings.titles[mainIndex]))
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button {
                print("북마크 등록!")
            } label: {
                Image(systemName: "bookmark")
            }
        }
    }
}

#Preview {
    NavigationStack {
        DetailView(mainIndex: 1, subIndex: 0)
    }
}


