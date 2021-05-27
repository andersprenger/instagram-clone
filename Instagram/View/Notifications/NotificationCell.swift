//
//  NotificationCell.swift
//  Instagram
//
//  Created by Anderson Sprenger on 26/05/21.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage: Bool = false
    
    
    var body: some View {
        HStack {
            Image("toninho")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            Text("ironman")
                .font(.system(size: 14, weight: .semibold)) +
            Text(" liked one of your posts.")
                .font(.system(size: 14))
            
            Spacer()

            if showPostImage {
                Image("toninho")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
            } else {
                Button(action: {
                    
                }, label: {
                    Text("Follow")
                        .padding(.vertical, 8)
                        .padding(.horizontal)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(.system(size: 14, weight: .semibold))
                })
            }
        }
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
            .previewLayout(.fixed(width: 400, height: 50))
    }
}
