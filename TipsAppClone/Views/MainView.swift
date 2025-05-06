//
//  ContentView.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//

import SwiftUI

struct MainView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            
            List {
                
                Image("Image_AirpodsPro")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 120)
                    .listRowInsets(EdgeInsets())
                    .padding(.top, 80)
                    .overlay(
                        Text("Airpods")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .padding(),
                        alignment: .topLeading
                    )
                
                //                let grouped = Dictionary(grouping: mainItems, by: \.section)
                //                let sortedSections = ["시작하기", "새로운 기능", "더 찾아보기", "사용 설명서"]
                
                //                ForEach(sortedSections, id: \.self) { section in
                //                    Section(header: Text(section)
                //                        .font(.title3)
                //                        .fontWeight(.semibold)
                //                        .foregroundStyle(.black)
                //                    ) {
                //                        ForEach(grouped[section]!) { mainItem in
                //                            NavigationLink(destination: Subview(detailItem: detailItem)) {
                //                                HStack {
                //                                    Image(systemName: mainItem.icon)
                //                                        .resizable()
                //                                        .frame(width: 20, height: 20)
                //                                        .foregroundStyle(mainItem.gradient)
                //                                    Text(mainItem.title)
                //                                }
                //                            }
                //
                //                        }
                
                
                
                
                
                //                            NavigationLink(destination: Subview(detailItem: detailItem)) {
                //                                HStack {
                //                                    Image(systemName: mainItem.icon)
                //                                        .resizable()
                //                                        .frame(width: 20, height: 20)
                //                                        .foregroundStyle(mainItem.gradient)
                //                                    Text(mainItem.title)
                //                                }
                //                            }
                
            }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "검색")
            
            
            
            
        }.navigationTitle(Text("팁"))
        
        
    }
    
}


#Preview {
    MainView()
}
