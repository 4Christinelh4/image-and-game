//
//  ThumbnailImage.swift
//  my awesome project
//
//

import SwiftUI

struct ThumbnailImage: View {
    var resource_: String
    var idx_: Int
    @Binding var cursor: Int
    
    var body: some View {
        Image(resource_)
            .resizable()
            .scaledToFit()
            .frame(height: 40)
            .cornerRadius(3.0)
            .onTapGesture {
                cursor = idx_
            }
    }
}
