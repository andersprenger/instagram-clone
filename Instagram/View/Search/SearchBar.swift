//
//  SearchBar.swift
//  Instagram
//
//  Created by Anderson Sprenger on 26/05/21.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack{
            TextField("Search...", text: $text)
                .padding(.vertical, 8)
                .padding(.leading, 44)
                .padding(.trailing, 8)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding()
                    }
                )
                .onTapGesture {
                    isEditing = true
                    print("okkkk")
                }
            
            if isEditing {
                Button(action: {
                    isEditing = false
                    text = ""
                    UIApplication.shared.endEditing()
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.gray)
                })
                .transition(.move(edge: .leading))
                .animation(.default)
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("text"), isEditing: .constant(false))
            .previewLayout(.fixed(width: 350, height: 50))
    }
}
