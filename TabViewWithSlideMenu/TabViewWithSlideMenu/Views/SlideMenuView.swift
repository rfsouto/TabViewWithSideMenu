//
//  DrawerMenuView.swift
//  Santalucia
//
//  Created by alopezh on 1/2/24.
//  Copyright © 2024 Julio Nieto Santiago. All rights reserved.
//

import SwiftUI

struct SlideMenuView : View {
    let width: CGFloat
    let isOpen: Bool
    let onMenuClose: () -> Void
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.3))
            .opacity(self.isOpen ? 1.0 : 0.0)
            .animation(Animation.easeIn.delay(0.25), value: isOpen)
            .onTapGesture {
                onMenuClose()
            }
            HStack {
                VStack(){
                    Spacer()
                    Text("Option 1")
                    Spacer()
                    Text("Option 2")
                    Spacer()
                    Text("Option 3")
                    Spacer()
                    Spacer()
                }
                .frame(width: self.width)
                .background(Color(red: 40/255, green: 167/255, blue: 71/255))
                .offset(x: self.isOpen ? 0 : -self.width)
                .animation(.default, value: isOpen)
            }
        }
    }
}

#Preview {
    SlideMenuView(width: 200, isOpen: false, onMenuClose: { })
}
