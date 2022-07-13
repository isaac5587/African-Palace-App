//
//  HomeScreen.swift
//  AfricanPalaceApp
//
//  Created by Trill Isaac on 7/1/22.
//

import SwiftUI

struct HomeScreen: View {
    
    //Home screen background
    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 255, green: 255, blue: 255, alpha: 1))
                    .ignoresSafeArea()
                
                ScrollView (showsIndicators: false) {
                    VStack (alignment: .leading) {
                        
                        TopLogoView()
                            .padding()
                        
                        Text("Gallery")
                            .font(.custom("PlayfairDisplay-Bold", size: 24))
                            .padding(.horizontal)
                        
                        //Gallery Row #1
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack (spacing: 0) {
                                ForEach(0 ..< 15) { i in
                                    NavigationLink(
                                        destination: ViewImage(image: "HomeRowOne_\(i+1)"),
                                        label: {
                                            GalleryCardView(image: Image("HomeRowOne_\(i+1)"), size: 210)
                                        })
                                    .navigationBarHidden(true)
                                    .foregroundColor(.black)
                                }
                                .padding(.leading)
                            }
                        }
                        .padding(.bottom)
                        
                        //Gallery Row #2
                        Text("Food Gallery")
                            .font(.custom("PlayfairDisplay-Bold", size: 24))
                            .padding(.horizontal)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack (spacing: 0) {
                                ForEach(0 ..< 13) { i in
                                    NavigationLink(
                                        destination: ViewImage(image: "FoodRow_\(i+1)"),
                                        label: {
                                            GalleryCardView(image: Image("FoodRow_\(i+1)"), size: 180)
                                        })
                                }
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

// African Palace Logo at the top
struct TopLogoView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("APLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

//Setup for the card gallery view
struct GalleryCardView: View {
    let image: Image
    let size: CGFloat
    
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
        
    }
}
