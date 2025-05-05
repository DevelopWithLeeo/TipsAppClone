//
//  SidebarVIew.swift
//  TipsAppClone
//
//  Created by Choi Jung In on 5/5/25.
//

import SwiftUI


struct SidebarView: View {
    
    @State var text: String = ""
    
    var body: some View {
        NavigationView {
            List(mainItems) {
                ListRow(text: $0.title, icon: $0.icon)
            }
        .navigationTitle("Tips")
        }
        .searchable(text: $text)
    }
}

struct ListRow: View {
    let text: String
    let icon: Image
    let count: Int = 0
    
    var body: some View {
        HStack {
            icon
            Text(text)
            Spacer()
            Image(systemName: "chevron.forward")
        }
    }
}


#Preview {
    SidebarView()
}
