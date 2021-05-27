//
//  UserCell.swift
//  Instagram
//
//  Created by Anderson Sprenger on 26/05/21.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image("toninho")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack (alignment: .leading) {
                Text("ironman")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("Tony Stark")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
            .previewLayout(.fixed(width: 350, height: 50))
    }
}
