//
//  Home.swift
//  short
//
//  Created by Carlos Petit on 05-12-22.
//

import SwiftUI

struct Home: View {
    @State var selectedIndex = 0
    @State var showCreateShort = false
    @State var text = ""
    var body: some View {
        VStack{
            ZStack{
                TabView {
                    Feed()
                        .onTapGesture {
                            self.selectedIndex = 0
                        }
                        .tabItem {
                            Image(systemName: "house")
                                .imageScale(.large)
                                .foregroundColor(Color("BackGround"))
                        }
                    Search()
                        .onTapGesture {
                            self.selectedIndex = 1
                        }
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                                .imageScale(.large)
                        }
                    Notificaations()
                        .onTapGesture {
                            self.selectedIndex = 2
                        }
                        .tabItem {
                            Image(systemName: "bell")
                                .imageScale(.large)
                        }
                    Messages()
                        .onTapGesture {
                            self.selectedIndex = 3
                        }
                        .tabItem {
                            Image(systemName: "envelope")
                                .imageScale(.large)
                        }
                }
                
                .padding()
                .accentColor(Color("BackGround"))
                
                
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Button {
                            self.showCreateShort.toggle()
                        } label: {
                            Image(systemName: "pencil")
                                .frame(width: 20, height: 20)
                                .padding()
                                .background(Color("BackGround"))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        }
                    }.padding()
                }.padding(.bottom, 65)
                
            }
            .sheet(isPresented: $showCreateShort) {
                CreateShortView(text: self.text)
            }
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
