//
//  CardView.swift
//  UTMIST FashionBot
//
//  Created by Hannah Kim on 2023-12-04.
//

import SwiftUI

struct CardView: View {
    
    var outfits: String
    @State private var offset = CGSize.zero
    @State private var color: Color = .black
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 320, height: 428)
                .border(.white, width: 6.0)
                .cornerRadius(4)
                .foregroundColor(color.opacity(0.9))
                .shadow(radius: 4)
            HStack {
                Text(outfits)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
            .onChanged { gesture in
                offset = gesture.translation
                withAnimation {
                    changeColor(width: offset.width)
                }
            } .onEnded { _ in
                withAnimation {
                    swipeCard(width: offset.width)
                    changeColor(width: offset.width)
                }
            }
        )
    }
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            print ("\(outfits) removed")
            offset = CGSize(width: -500, height: 0)
        case 150...500:
            print ("\(outfits) added")
            offset = CGSize (width: 500, height: 0)
        default:
            offset = .zero
        }
    }
    func changeColor (width: CGFloat) {
        switch width {
        case -500...(-150):
            color = .red
        case 130...500:
            color = .green
        default:
            color = .black
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(outfits: "Outfit 1")
                .previewInterfaceOrientation(.portrait)
            CardView(outfits: "Outfit 1")
        }
    }
}
