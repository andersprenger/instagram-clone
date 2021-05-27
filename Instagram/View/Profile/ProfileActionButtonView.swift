//
//  ProfileActionButtonView.swift
//  Instagram
//
//  Created by Anderson Sprenger on 26/05/21.
//

import SwiftUI

struct ProfileActionButtonView: View {
    var isCurrentUser: Bool
    
    var body: some View {
        if isCurrentUser {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Spacer()
                Text("Edit Profile")
                    .foregroundColor(Color("DynamicColor"))
                    .font(.system(size: 15,weight: .semibold))
                Spacer()
            }
            .frame (height: 32)
            .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.gray, lineWidth: 1))
        } else {
            HStack (spacing: 8){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Spacer()
                    Text("Follow")
                        .foregroundColor(Color("DynamicColor"))
                        .font(.system(size: 15,weight: .semibold))
                    Spacer()
                }
                .frame (height: 32)
                .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.gray, lineWidth: 1))
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Spacer()
                    Text("Message")
                        .foregroundColor(Color("DynamicColor"))
                        .font(.system(size: 15,weight: .semibold))
                    Spacer()
                }
                .frame (height: 32)
                .overlay(RoundedRectangle(cornerRadius: 3).stroke(Color.gray, lineWidth: 1))
            }
        }
    }
}

struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView(isCurrentUser: false)
            .previewLayout(.fixed(width: 360, height: 32))
    }
}
