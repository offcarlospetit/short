//
//  UserCell.swift
//  short
//
//  Created by Carlos Petit on 08-12-22.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text("Carlangas")
                    .fontWeight(.heavy)
                Text("offcarlospetit")
            }
            Spacer(minLength: 0)
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
