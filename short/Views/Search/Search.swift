//
//  Search.swift
//  short
//
//  Created by Carlos Petit on 05-12-22.
//

import SwiftUI

var trendingTopics = [String: Int]()


struct Search: View {
    @State var text = ""
    @State var isEditing = false
    var body: some View {
        VStack{
            SearchBar(textSearch: $text, isEditing: $isEditing)
                .padding(.horizontal)
            
            if !isEditing {
                List (0..<9) {i in
                    SearchCell(tag: "Short #\(i)", shorts: String(i))
                }
                .listStyle(PlainListStyle())
            }else{
                List (0..<9) {i in
                    UserCell()
                }
                .listStyle(PlainListStyle())
            }
           
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
