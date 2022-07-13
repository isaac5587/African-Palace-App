//
//  MenuScreen.swift
//  AfricanPalaceApp
//
//  Created by Trill Isaac on 7/1/22.
//

import Foundation
import SwiftUI

struct MenuScreen: View {
    
    //View Menu Front Side when clicked
    struct ViewMenuFront : View {
        @State private var currentScale : CGFloat = 1
        var body: some View {
            Image("MenuFront")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .scaleEffect(currentScale)
                .gesture(
                    MagnificationGesture()
                        .onChanged({ newScale in currentScale = newScale})
                )
        }
    }
    
    //View Back Side when clicked
    struct ViewMenuBack : View {
        @State private var currentScale : CGFloat = 1
        var body: some View {
            Image("MenuBack")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .scaleEffect(currentScale)
                .gesture(
                    MagnificationGesture()
                        .onChanged({ newScale in currentScale = newScale})
                )
        }
    }
    
    //Menu screen background
    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 255, green: 255, blue: 255, alpha: 1))
                    .ignoresSafeArea()
                
                ScrollView (showsIndicators: false) {
                    VStack (alignment: .leading) {
                        
                        MenuTopLogoView()
                            .padding()
                        HStack (alignment: .center, spacing: 10) {
                            ForEach(0 ..< 1) { i in
                                NavigationLink(
                                    destination: ViewMenuFront(),
                                    label: {
                                        MenuFrontCardView(image: Image("MenuFront"), size: 375)
                                    })
                                .navigationBarHidden(true)
                                .foregroundColor(.black)
                            }
                            .padding(.leading)
                        }
                        .padding(.bottom)
                        
                        HStack (spacing: 0) {
                            ForEach(0 ..< 1) { i in
                                NavigationLink(
                                    destination: ViewMenuBack(),
                                    label: {
                                        MenuBackCardView(image: Image("MenuBack"), size: 375)
                                    })
                                .padding(.leading)
                            }
                        }
                    }
                }
                
                VStack {
                    Spacer()
                }
            }
        }
    }
}

// African Palace Logo at the top for the menu
struct MenuTopLogoView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("APLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Text("Menu")
                .font(.custom("DIN Condensed Bold", size: 40))
                .padding(.horizontal)
        }
        
    }
}

//Setup for the Front side of the Menu
struct MenuFrontCardView: View {
    let image: Image
    let size: CGFloat
    
    var body: some View {
        VStack {
            Text("Front Side")
                .font(.custom("PlayfairDisplay-Bold", size: 18))
                .padding(.horizontal)
            image
                .resizable()
                .frame(width: size + 60, height: size)
                .cornerRadius(20.0)
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
    }
    
}

//Setup for the Back Side of the Menu
struct MenuBackCardView: View {
    let image: Image
    let size: CGFloat
    
    var body: some View {
        VStack {
            Text("Back Side")
                .font(.custom("PlayfairDisplay-Bold", size: 18))
                .padding(.horizontal)
            image
                .resizable()
                .frame(width: size + 60, height: size)
                .cornerRadius(20.0)
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
    }
}


