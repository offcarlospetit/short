//
//  Home.swift
//  short
//
//  Created by Carlos Petit on 05-12-22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            ZStack{
                TabView {
                    Feed()
                        .tabItem {
                            Image(systemName: "house")
                                .imageScale(.large)
                        }
                    Search()
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                                .imageScale(.large)
                        }
                    Notificaations()
                        .tabItem {
                            Image(systemName: "bell")
                                .imageScale(.large)
                        }
                    Messages()
                        .tabItem {
                            Image(systemName: "envelope")
                                .imageScale(.large)
                        }
                }            }
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
