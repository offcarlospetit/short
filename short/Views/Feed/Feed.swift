//
//  Feed.swift
//  short
//
//  Created by Carlos Petit on 05-12-22.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 18) {
                ShortCellView(short: simpleText, shortImage: "post")
                Divider()
                ForEach(1...20, id: \.self) { _ in
                    ShortCellView(short: simpleText)
                    Divider()
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
