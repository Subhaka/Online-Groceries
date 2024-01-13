//
//  TabButton.swift
//  OnlineGroceries
//
//  Created by Subhaka Bhavanishankar on 2023-12-20.
//

import SwiftUI
struct TabButton: View {
    @State var title: String = "Title"
    @State var icon: String = "house"
    var isSelected: Bool = false
    var didSelect: ( ()->() )
    var body: some View {
        Button{
            debugPrint("Tab Button Tap")
            didSelect()
        }label: {
            VStack{
                Image(systemName:icon).resizable().scaledToFit().frame(width: 25, height: 25)
                
                Text(title).font(.system(size: 14, weight: .semibold))
            }
            
        }.foregroundColor(isSelected ? .primaryApp : .primaryText).frame(minWidth: 0, maxWidth: .infinity)
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        TabButton {
            print("Test")
        }
    }
}
