//
//  SectionTitleAll.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-21.
//

import SwiftUI

struct SectionTitleAll: View {
    @State var title: String = "Title"
    @State var titleAll: String = "View All"
    var didTap: ( ()->() )?
    var body: some View {
        HStack{
            Text(title).font(.system(size: 24, weight: .semibold)).foregroundColor(.primaryText)
            Spacer()
            
            Text(titleAll).font(.system(size: 16, weight: .semibold)).foregroundColor(.primaryApp)
        }.frame(height: 40)
    }
}

struct SectionTitleAll_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitleAll().padding(20)
    }
}
