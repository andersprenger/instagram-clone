//
//  FeedCell.swift
//  Instagram
//
//  Created by Anderson Sprenger on 25/05/21.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 0){
            // user info
            HStack {
                Image("joker")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("joker")
                    .font(.system(size: 14, weight: .semibold))
            }
            .padding(4)
            
            //post image
            Image("joker")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: UIScreen.main.bounds.size.width, maxHeight: 270)
                .clipped()
            
            // action buttons
            HStack {
                Button(action: {}) {
                    Image(systemName: "heart")
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                    
                }
                
                Button(action: {}) {
                    Image(systemName: "bubble.right")
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                    
                }
                
                Button(action: {}) {
                    Image(systemName: "paperplane")
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                    
                }
            }
            .foregroundColor(.black)
            .padding(4)
            
            // caption
            HStack {
                Text("joker")
                    .font(.system(size: 14, weight: .semibold)) +
                Text(" I used to think that my life was a tragedy, but now I realize, it's a fucking comedy.")
                    .font(.system(size: 15))
            }
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.top)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
