//
//  MainTabView.swift
//  Instagram
//
//  Created by Anderson Sprenger on 25/05/21.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
            
            SearchView()
            
            UploadPostView()
            
            NotificationsView()
            
            ProfileView()
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
