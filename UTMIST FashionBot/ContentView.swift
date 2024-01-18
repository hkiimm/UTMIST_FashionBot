//
//  ContentView.swift
//  UTMIST FashionBot
//
//  Created by Hannah Kim on 2023-12-03.
//
//  Main page of the app currently under development
//  All pages lead off of here --> swipe function, outfit categorization/filtering, settings function, users closet, etc.

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Most Recent Outfits")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                    .frame(maxWidth: .infinity, alignment: .leading)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(0..<5) { _ in
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 150, height: 150)
                        }
                    }
                    .padding(.horizontal)
                }
                Text("My Closet")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom)
                    .frame(maxWidth: .infinity, alignment: .leading)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(0..<5) { _ in
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 150, height: 150)
                        }
                    }
                    .padding(.horizontal)
                }

                Spacer()

                HStack {
                    Spacer()
                    Button(action: {
                        // Handle tools button action
                    }) {
                        Image(systemName: "hammer.fill") // Replace with the actual image name for tools
                            .font(.system(size: 40)) // Larger tools button
                            .padding()
                    }

                    Spacer()

                    Button(action: {
                        // Handle camera button action
                    }) {
                        Image(systemName: "camera")
                            .font(.system(size: 40)) // Larger camera button
                            .padding()
                    }
                    Spacer()
                }
            }
            .padding()
            .navigationBarTitle(Text(""), displayMode: .inline)
            .navigationBarItems(leading:
                Image("FBlogo")
                    .resizable()
                    .frame(width: 150, height: 150)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


