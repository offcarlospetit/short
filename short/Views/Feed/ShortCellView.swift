//
//  ShortCellView.swift
//  short
//
//  Created by Carlos Petit on 06-12-22.
//

import SwiftUI

struct ShortCellView: View {
    var short: String
    var shortImage: String?
    var body: some View {
        VStack(alignment: .trailing){
            HStack (alignment: .top, spacing: 10, content: {
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 10, content: {
                    (
                        Text("Carlangas ")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        +
                        Text("@offcarlospetit")
                            .foregroundColor(.gray)
                    )
                    
                    Text(short)
                        .frame(maxHeight: 135, alignment: .top)
                    
                    if let image = shortImage {
                        GeometryReader { proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height: 250)
                    }
                })
            })
            // bottoms
                
            HStack(spacing: 30) {
                Button {
                    
                } label: {
                    
                    Image(systemName: "message")
                        .frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                    Text("345")
                        .foregroundColor(.gray)
                }.frame(alignment: .trailing)
                
                Button {
                    
                } label: {
                    
                    Image(systemName: "heart")
                        .frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                    Text("345")
                        .foregroundColor(.gray)
                }
                
                Button {
                    
                } label: {
                    
                    Image(systemName: "arrow.2.squarepath")
                        .frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                    Text("345")
                        .foregroundColor(.gray)
                }
                
                Button {
                    
                } label: {
                    
                    Image(systemName: "square.and.arrow.up")
                        .frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                    Text("345")
                        .foregroundColor(.gray)
                }

            }.padding(.trailing, 10)
            
        }
        .padding(.trailing, 10)
    }
}

struct ShortCellView_Previews: PreviewProvider {
    static var previews: some View {
        ShortCellView(short: simpleText, shortImage: "post")
    }
}


var simpleText = "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type."
