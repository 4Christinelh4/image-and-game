//
//  MainSceneBackground.swift
//  my awesome project
//
//

import SwiftUI

struct MainSceneBackground: View {
    @ObservedObject var currentBackground: BackgroundHelper
    
    var body: some View {
        VStack {
            backgroundBody
                .padding()
        }
    }
    
    private var backgroundBody: some View {
        GeometryReader {
            geometry in
            ZStack {
                if let validURL = currentBackground.url {
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
                }
            }
        }
    }
}

#Preview {
    MainSceneBackground(currentBackground: BackgroundHelper(url: URL(string: "")))
}
