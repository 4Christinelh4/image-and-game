//
//  Theme.swift
//  my awesome project
//

import Foundation
import SwiftUI

class MyTheme: ObservableObject {
    var id = UUID()
    var name: String
    var relevantImages: [String] = []
    var cursor: Int = -1
    
    init(name: String, relevantImages: [String]) {
        self.name = name
        self.relevantImages = relevantImages
    }
}

