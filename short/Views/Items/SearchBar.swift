//
//  SearchBar.swift
//  short
//
//  Created by Carlos Petit on 08-12-22.
//

import SwiftUI

struct SearchBar: View {
    @Binding var textSearch: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack{
            TextField("Search Shorts", text: $textSearch )
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                }
            Button {
                isEditing = false
                textSearch = ""
                UIApplication.shared.endEditing()
            } label: {
                Text("Cancel")
                    .foregroundColor(.black)
                    .padding(.trailing, 8)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
                
            }

        }
        .onTapGesture {
           isEditing = true
        }
    }
}

