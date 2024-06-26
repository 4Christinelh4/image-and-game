//
//  ThemeSelector.swift
//  my awesome project
//
//

import SwiftUI

struct ThemeSelector: View {
    @State var currentThemeShown: MyTheme
    var body: some View {
        HStack {
            chooser
            currentTheme
        }
        .padding()
    }
    
    var chooser: some View {
        AnimatedActionButton(h: 40, systemImage: "paintpalette") {
        }
        .contextMenu {
        }
    }
    
    var currentTheme: some View {
        ScrollView (.horizontal) {
            HStack {
                Text(currentThemeShown.name)

                ForEach(currentThemeShown.relevantImages.indices, id: \.self) {
                    idx_ in
                    
                    ThumbnailImage(resource_: currentThemeShown.relevantImages[idx_], idx_: idx_, cursor: $currentThemeShown.cursor)
                }
            }
        }
    }
}

#Preview {
    ThemeSelector(currentThemeShown: MyTheme(name: "for testing", relevantImages: ["milktea", "coffee", "theme1/coffee_1"]))
}
