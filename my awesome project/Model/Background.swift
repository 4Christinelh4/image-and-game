//
//  BackgroundHandler.swift
//  my awesome project
//
//

import Foundation
import SwiftUI

class BackgroundHelper: ObservableObject {
    @Published var url: URL?
    init(url: URL? = nil) {
        self.url = url
    }
}
