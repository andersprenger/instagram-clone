//
//  UserStatView.swift
//  Instagram
//
//  Created by Anderson Sprenger on 26/05/21.
//

import SwiftUI

struct UserStatView: View {
    var title: String
    var value: Int

    var body: some View {
        VStack {
            Text("\(value)")
                .font(.system(size: 15, weight: .semibold))
            
            Text(title)
                .font(.system(size: 15))
        }
        .frame(width: 80, alignment: .center)
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(title: "Followers", value: 2)
            .previewLayout(.fixed(width: 75, height: 50))
    }
}
