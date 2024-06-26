//
//  BackgroundSelector.swift
//  my awesome project
//
//

import Foundation
import SwiftUI

class BackgroundSelector {
    var currentTheme: MyTheme
    var background: BackgroundHelper
    private var cursorIndex = -1
    
    init(currentTheme: MyTheme, background: BackgroundHelper) {
        self.currentTheme = currentTheme
        self.background = background
    }
    
    var viewDisplayed: some View {
        if cursorIndex == -1 {
            if let validURL = background.url {
                AsyncImage(url: validURL) {
                    phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                    case .failure:
                        Image(systemName: "exclamationmark.triangle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    default:
                        ProgressView()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                }
                
            } else {
                // fatal error?
                return ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        // show the url view relevant to
        return ProgressView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}
