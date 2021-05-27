//
//  UserListView.swift
//  Instagram
//
//  Created by Anderson Sprenger on 26/05/21.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ..< 50) { _ in
                    NavigationLink(destination: ProfileView()) {
                        UserCell()
                    }
                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
