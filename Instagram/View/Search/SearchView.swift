//
//  SearchView.swift
//  Instagram
//
//  Created by Anderson Sprenger on 25/05/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @State var inSearchMode = true
    
    var body: some View {
        VStack {
            ScrollView {
                
                // search bar
                SearchBar(text: $searchText, isEditing: $inSearchMode)
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    .padding(.bottom, 8)

                if inSearchMode {
                    UserListView()
                        .padding([.horizontal, .bottom])
                } else {
                    PostGridView()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
