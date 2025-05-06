//
//  SubView.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/2/25.
//

import SwiftUI

struct SubView: View {
    let index: Int
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    VStack {
                        Constants.Icons.icons[index]
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.white)
                        
                        Text(Constants.Strings.titles[index])
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        Text(Constants.Strings.subtitles[index])
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 180)
                    .listSectionSeparator(.hidden, edges: [.top, .bottom])
                    .listRowBackground(
                        Constants.Gradients.gradients[index]
                            .mask(
                                LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: .black, location: 0),
                                        .init(color: .black.opacity(0), location: 1)
                                    ]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                    )
//                    .ignoresSafeArea(.top)
                    //탭바 투명으로?
                    
                    Section {
                        ForEach(0..<Constants.Strings.detailTitles[index].count, id: \.self) { i in
                            NavigationLink {
                                DetailView(mainIndex: index, subIndex: i)
                            } label: {
                                HStack {
                                    Constants.Images.images[index][i]
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 60)
                                        .padding(.vertical, 3)
                                        .padding(.horizontal, 15)
                                        .background(Color(UIColor.systemGray5))
                                        .cornerRadius(12)
                                    VStack(alignment: .leading) {
                                        Text(Constants.Strings.detailTitles[index][i])
                                            .font(.system(size: 18, weight: .bold))
                                        Text(Constants.Strings.contents[index][i])
                                            .font(.system(size: 12))
                                            .foregroundStyle(.gray)
                                            .lineLimit(3)
                                    }
                                }
                            }
                        }
                    }
                    .listSectionSeparator(.hidden, edges: [.top, .bottom])
                }
                .listStyle(.inset)
            }
        }
    }
}

#Preview {
    SubView(index: 1)
}
