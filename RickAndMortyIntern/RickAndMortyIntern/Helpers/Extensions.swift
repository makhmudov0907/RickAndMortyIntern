//
//  Extensions.swift
//  RickAndMortyIntern
//
//  Created by Mirshod Makhmudov on 19/08/23.
//

import SwiftUI

extension View {
    
    func setNavbarColor(color: Color) {
        
    }
    
    func setNavbarTitleColor(color: Color) {
        
    }
}

// MARK: NavigationController Helpers
extension UINavigationController {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.largeTitleTextAttributes = [.foregroundColor : UIColor.white]
        navigationBar.titleTextAttributes = [.foregroundColor : UIColor.black]
        
    }
}
