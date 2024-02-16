//
//  ContentViewModel.swift
//  TabViewWithSlideMenu
//
//  Created by rfsouto on 16/2/24.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject {
    @Published var isMenuOpen: Bool = false
}
