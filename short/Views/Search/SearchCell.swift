//
//  SearchCell.swift
//  short
//
//  Created by Carlos Petit on 07-12-22.
//

import SwiftUI

struct SearchCell: View {
    var tag = "Qatar2022"
    var shorts = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(tag)
                .fontWeight(.heavy)
            Text(shorts + "Shorts")
                .fontWeight(.light)
        }
    }
}

struct SearchCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchCell()
    }
}
