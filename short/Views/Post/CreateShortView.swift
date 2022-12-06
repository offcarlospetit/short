//
//  CreateShortView.swift
//  short
//
//  Created by Carlos Petit on 05-12-22.
//

import SwiftUI

struct CreateShortView: View {
    @State var text = ""
    var body: some View {
        VStack{
            HStack{
                Button {
                    
                } label: {
                    Text("Cance")
                }
                Spacer()
                Button {
                    
                } label: {
                    Text("Short")
                        .padding()
                }
                .background(Color("BackGround"))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .circular))
            }
            MultiLineTextField(text: $text)
        }
        .padding()
    }
}

struct CreateShortView_Previews: PreviewProvider {
    static var previews: some View {
        CreateShortView()
    }
}
