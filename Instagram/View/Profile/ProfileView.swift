//
//  ProfileView.swift
//  Instagram
//
//  Created by Anderson Sprenger on 25/05/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding([.horizontal, .top])
                
                ProfileActionButtonView(isCurrentUser: true)
                    .padding()
                
                PostGridView()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
