//
//  RealSubView.swift
//  TipsAppClone
//
//  Created by 우정아 on 5/6/25.
//

import SwiftUI

struct RealSubView: View {
    var body: some View {
        List {

            ZStack {
                Rectangle()
                    .frame(height: 320)
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .bottomLeading, endPoint: .topTrailing))
                    .mask(
                        LinearGradient(
                            gradient: Gradient(colors: [.black, .black.opacity(0.2)]),
                            startPoint: .top,
                            endPoint: .bottom))
     
                VStack{
                    Image(systemName: "apps.iphone")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                        .foregroundStyle(.white)
                        .padding(.top, 80)
                    
                    Text("iPhone 탐색하기")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(.vertical, 5)
                    
                    Text("제스처를 찾아보고 iPhone을 손쉽게 탐색해 보세요.")
                        .font(.subheadline)
                        .fontWeight(.thin)
                }
                
            }
            .listRowInsets(EdgeInsets())
            .listRowSeparator(.hidden)
            .edgesIgnoringSafeArea(.top)
            
            SubViewList(imageName: "image_1", subListTitle: "홈으로 바로 이동하기", subListDescription: "홈 화면으로 이동하려면 화면 하단 가장 자리를 쓸어올리세요.")

            
            SubViewList(imageName: "Image_4", subListTitle: "활성화된 앱 확인하기", subListDescription: "사용 중인 앱과 상관없이 Dynamic Island를 길게 터치하여 진행 중인 타이머, 음악, 경로 등을 확인하세요.")

            
            SubViewList(imageName: "Image_5", subListTitle: "앱 전환하기", subListDescription: "최근에 사용한 앱으로 돌아가라면 화면을 쓸어올리고 잠시 멈춘 다음, 앱을 탭하여 여세요.")
            
            
            SubViewList(imageName: "Image_6", subListTitle: "제어 센터 열기", subListDescription: "화면 오른쪽 상단을 쓸어내려 화면 밝기를 변경하고, 오디오를 조절하는 등의 동작을 빠르게 수행해 보세요.")
            
            SubViewList(imageName: "image_1", subListTitle: "더 많은 제어 항목 보기", subListDescription: "제어 센터에서 대부분의 제어 항목을 길게 눌러 더 많은 작업을 수행할 수 있습니다. 예를 들어, 손전등 버튼을 길게 눌러 손전등의 밝기를 조절해 보세요.")
            
            
            SubViewList(imageName: "Image_2", subListTitle: "알림 보기", subListDescription: "놓쳤을지도 모르는 알림 목록을 확인하려면 화면 상단에서 아래로 쓸어내리세요.")

            
            SubViewList(imageName: "Image_3", subListTitle: "전화와 알림을 무음으로 설정하기", subListDescription: "무음 모드를 켜려면 iPhone 왼쪽 측면에 있는 동작 버튼을 길게 누르세요. 설정해 놓은 시계 앱 알람 소리는 여전히 들을 수 있습니다.")
            
 
            SubViewList(imageName: "Image_4", subListTitle: "사진 빠르게 찍기", subListDescription: "카메라 제어를 클릭하여 카메라를 빠르게 여세요. 사진을 찍으려면 다시 클릭하세요. 비디오를 녹화하려면 길게 클릭하세요.")

            
            SubViewList(imageName: "Image_5", subListTitle: "스크린샷 찍기", subListDescription: "측면 버튼과 음량 높이기 버튼을 동시에 누르고 빠르게 손을 떼세요. 썸네일을 탭하여 스크린샷에 마크업을 하거나 스크린샷을 공유할 수 있습니다. 또는 사진 앱에서 스크린샷을 나중에 볼 수도 있습니다.")
            
            SubViewList(imageName: "Image_6", subListTitle: "사용 설명서 둘러보기", subListDescription: "모든 기기의 사용설명서는 팁 앱에서 제공됩니다. 뒤로를 탭하고 팁을 탭한 다음, 하단으로 스크롤하세요. iPhone 사용 설명서로 이동하기")

            
        }
        .listStyle(.inset)
        .edgesIgnoringSafeArea(.top)
        .listRowInsets(EdgeInsets())
    }
    
}

#Preview {
    NavigationStack{
        RealSubView()
    }
}



struct SubViewList: View {

    var imageName: String
    var subListTitle: String
    var subListDescription: String
    
    var body: some View {
        NavigationLink {
            RealDetailView()
        } label: {
            HStack {
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 120)
                
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(subListTitle)
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    Text(subListDescription)
                        .font(.caption)
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    
                }
            }
        }
    }
}
