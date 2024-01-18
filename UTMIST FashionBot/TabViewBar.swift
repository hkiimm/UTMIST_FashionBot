//
//  TabView.swift
//  UTMIST FashionBot
//
//  Created by Hannah Kim on 2023-12-04.
//

import SwiftUI

struct TabViewBar: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text ("Home")
                }
            SwipeView()
                .tabItem {
                    Image(systemName: "person")
                    Text ("Outfits")
                }
            Settings()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
    }
}

struct TabViewBar_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBar()
    }
}
