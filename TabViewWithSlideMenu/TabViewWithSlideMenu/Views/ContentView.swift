//
//  ContentView.swift
//  TabViewWithSlideMenu
//
//  Created by rfsouto on 16/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel: ContentViewModel = ContentViewModel()
    
    @State private var option: BarOptions = BarOptions.firstTab
    
    @State private var originalOption : BarOptions = BarOptions.firstTab
    
    
    var body: some View {
        ZStack {
            TabView(selection: $option) {
                
                Color(red: 216/255, green: 67/255, blue: 82/255) // Rojo
                    .tabItem {
                        Image(systemName: "circle.fill")
                        Text("First")
                    }
                    .tag(BarOptions.firstTab)
                    .onAppear() {
                        self.originalOption = self.option
                    }
                
                Color(red: 251/255, green: 176/255, blue: 59/255) // Amarillo
                    .tabItem {
                        Image(systemName: "circle.fill")
                        Text("Second")
                    }
                    .tag(BarOptions.secondTab)
                    .onAppear() {
                        self.originalOption = self.option
                    }
                
                Color(red: 63/255, green: 143/255, blue: 204/255) // Azul
                    .tabItem {
                        Image(systemName: "circle.fill")
                        Text("Third")
                    }
                    .tag(BarOptions.thirdTab)
                    .onAppear() {
                        self.originalOption = self.option
                    }
                
                Color(red: 40/255, green: 167/255, blue: 71/255) // Verde
                    .tabItem {
                        Image(systemName: "circle.fill")
                        Text("Menu")
                    }
                    .tag(BarOptions.menuButton)
                        .onAppear(){
                            self.option = self.originalOption;
                            viewModel.isMenuOpen.toggle()
                    }
            }
            SlideMenuView(
                width: 300,
                isOpen: viewModel.isMenuOpen,
                onMenuClose: { viewModel.isMenuOpen.toggle() })
        }
    }
}

#Preview {
    ContentView()
}
