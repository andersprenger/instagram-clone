//
//  NotificationsView.swift
//  Instagram
//
//  Created by Anderson Sprenger on 25/05/21.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach (0 ..< 20) { _ in
                    NotificationCell()
                }
            }
            .padding()
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
