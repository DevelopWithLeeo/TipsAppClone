//
//  MainView.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//

import SwiftUI

struct MainView: View {
    @State private var path = NavigationPath() {
        didSet {
            print(path)
        }
    }
    @State private var searchText: String = ""
    //이거 이해가 잘 안됨,,,
    let groupedItems = Dictionary(grouping: MainItem.defaultItem, by: { $0.section })
    let sortedSections = ["시작하기", "새로운 기능", "더 찾아보기", "사용자의 기기", "사용 설명서"]
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                List {
                    ForEach(sortedSections, id: \.self) { section in
                        Section(header: Text(section)
                            .font(.title3)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding(.bottom, 5)
                        ) {
                            ForEach(groupedItems[section] ?? []) { item in
                                if item.isWebView {
                                    Label(item.title, systemImage: item.icon)
                                } else {
                                    NavigationLink(destination: SubView()) {
                                        HStack {
                                            Label {
                                                Text(item.title)
                                            } icon: {
                                                Image(systemName: item.icon)
                                                    .foregroundStyle(item.color)
                                            }
                                            if item.isCountable {
                                                Spacer()
                                                Text("2")
                                                    .foregroundColor(.gray)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("팁")
            
        }
        .searchable(
            text: $searchText,
            placement: .navigationBarDrawer(displayMode: .always)
        )
    }
}

#Preview {
    MainView()
}
