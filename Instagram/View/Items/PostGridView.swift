//
//  GridView.swift
//  Instagram
//
//  Created by Anderson Sprenger on 26/05/21.
//

import SwiftUI

struct PostGridView: View {
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 3
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: items, spacing: 2 ) {
                ForEach (0 ..< 30) { _ in
                    NavigationLink(destination: FeedView()){
                        Image("toninho")
                            .resizable()
                            .scaledToFill()
                            .frame(width: width, height: width)
                            .clipped()
                    }
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
