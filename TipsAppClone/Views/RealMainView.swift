//
//  RealMainView.swift
//  TipsAppClone
//
//  Created by 우정아 on 5/5/25.
//

import SwiftUI

struct RealMainView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            List {
                
                Image("Image_AirpodsPro")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .listRowInsets(EdgeInsets())
                //                    .padding(.top, 80)
                    .overlay(
                        Text("Airpods")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .offset(x: 10, y: 5),
                        alignment: .topLeading
                    )
                
                Section(header: Text("시작하기")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .padding(.bottom, 5)) {
                        HStack {
                            Image(systemName: "checkmark.rectangle.stack")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 20, height: 20)
                                .padding(.trailing, 5)
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors:[.green, .yellow]), startPoint: .bottomLeading, endPoint: .topTrailing))
                            
                            NavigationLink("설정 체크리스트") {
                                Text("설정 체크리스트 화면으로 넘어감")
                            }
                        }
                        HStack {
                            Image(systemName: "apps.iphone")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 12, height: 12)
                                .padding(.leading, 3)
                                .padding(.trailing, 12)
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors:[.blue, .mint]), startPoint: .bottomLeading, endPoint: .topTrailing))
                            NavigationLink("iPhone 탐색하기") {
                                Text("iPhone 탐색하기 화면으로 넘어감")
                            }
                        } 
                        HStack {
                            Image(systemName: "hand.draw")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 20, height: 20)
                                .padding(.trailing, 5)
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors:[.indigo, .blue]), startPoint: .bottomLeading, endPoint: .topTrailing))
                            NavigationLink("주요 제스처 연습하기") {
                                Text("주요 제스처 연습하기 화면으로 넘어감")
                            }
                        }
                    }
                
                
                Section(header: Text("새로운 기능")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .padding(.bottom, 5)) {
                        HStack {
                            Image(systemName: "sparkles")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 20, height: 20)
                                .padding(.trailing, 5)
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors:[.blue, .cyan]), startPoint: .bottomLeading, endPoint: .topTrailing))
                            NavigationLink("iOS 18의 새로운 기능") {
                                Text("iOS 18의 새로운 기능 페이지로 넘어감")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "apple.intelligence")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 20, height: 20)
                                .padding(.trailing, 5)
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors:[.red, .orange]), startPoint: .bottomLeading, endPoint: .topTrailing))
                            NavigationLink("Apple Intelligence") {
                                Text("Apple Intelligence 페이지로 넘어감")
                            }
                        }
                    }
                
                Section(header: Text("더 찾아보기")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .padding(.bottom, 5)) {
                        
                        HStack {
                            Image(systemName: "camera")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 20, height: 20)
                                .padding(.trailing, 5)
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors:[.orange, .yellow]), startPoint: .bottomLeading, endPoint: .topTrailing))
                            NavigationLink("사진 및 카메라") {
                                Text("사진 및 카메라 페이지로 넘어감")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "heart")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 20, height: 20)
                                .padding(.trailing, 5)
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors:[.purple, .pink]), startPoint: .bottomLeading, endPoint: .topTrailing))
                            NavigationLink("iPhone 개인 맞춤화하기") {
                                Text("iPhone 개인 맞춤화하기 페이지로 넘어감")
                            }
                        }
                    }
                
                Section(header: Text("사용 설명서")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .padding(.bottom, 5)) {
                        
                        HStack {
                            Image(systemName: "iphone.gen3")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 15, height: 15)
                                .padding(.trailing, 5)
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors:[.indigo, .blue]), startPoint: .bottomLeading, endPoint: .topTrailing))
                            NavigationLink("iPhone") {
                                Text("iPhone 페이지로 넘어감")
                            }
                        }
                        
                        HStack {
                            Image(systemName: "airpods.pro")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 20, height: 20)
                                .padding(.trailing, 5)
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors:[.indigo, .blue]), startPoint: .bottomLeading, endPoint: .topTrailing))
                            NavigationLink("AirPods") {
                                Text("AirPods 페이지로 넘어감")
                            }
                        }
                    }
                
                
                
                
                
            }.navigationTitle(Text("팁"))
        }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "검색")
    }
}

#Preview {
    RealMainView()
}
