//
//  ViewImage.swift
//  AfricanPalaceApp
//
//  Created by Trill Isaac on 7/1/22.
//

import Foundation
import SwiftUI


// Allows an image from the gallery to be looked at with zoom as well
struct ViewImage : View {
    @State private var currentScale : CGFloat = 1
    let image: String
    var body: some View {
        VStack {
            ZStack{
                Color(UIColor.white)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(currentScale)
                        .gesture(
                            MagnificationGesture()
                                .onChanged({ newScale in currentScale = newScale})
                        )
                }
            }
        }
    }
}
