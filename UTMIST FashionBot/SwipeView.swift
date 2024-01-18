//
//  SwipeView.swift
//  UTMIST FashionBot
//
//  Created by Hannah Kim on 2023-12-04.
//

import SwiftUI

import SwiftUI

struct SwipeView: View {
    // List of generated outfits that the user can run through
    private var outfits: [String] = ["Outfit 1", "Outfit 2", "Outfit 3", "Outfit 4", "Outfit 5"].reversed() // Placeholder --> would need to feed in continuous input based on users preferences
    
    var body: some View {
        VStack {
            ZStack {
                ForEach(outfits, id: \.self) {
                    outfits in CardView(outfits: outfits)
                }
            }
        }
    }
}

struct SwipeView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeView()
    }
}
