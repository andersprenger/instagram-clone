//
//  ProfileHeaderView.swift
//  Instagram
//
//  Created by Anderson Sprenger on 26/05/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image("toninho")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 16) {
                    UserStatView(title: "Posts", value: 1)
                    UserStatView(title: "Followers", value: 2)
                    UserStatView(title: "Following", value: 1)
                }
                
            }
            
            Text("Tony Stark")
                .font(.system(size: 15, weight: .bold))
                .padding(.top)
            
            Text("Genius, Billionaire, Playboy, Philanthropist.")
                .font(.system(size: 15))
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
            .previewLayout(.fixed(width: 360, height: 200))
    }
}
