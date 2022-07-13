//
//  MerchScreen.swift
//  AfricanPalace
//
//  Created by Trill Isaac on 7/1/22.
//

import Foundation
import SwiftUI

struct ClothingScreen: View {
    
    //home screen background
    var body: some View {
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 255, green: 255, blue: 255, alpha: 1))
                    .ignoresSafeArea()
                
                ScrollView (showsIndicators: false) {
                    VStack (alignment: .leading) {
                                                
                        ClothingTopLogoView()
                            .padding()
                        
                        Text("Standard Africa T-Shirts")
                            .font(.custom("PlayfairDisplay-Bold", size: 24))
                            .padding(.horizontal)
                        
                        //Clothing Gallery Row #1
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack (spacing: 0) {
                                ForEach(0 ..< 11) { i in
                                    NavigationLink(
                                        destination: ViewImage(image:"Shirt_\(i+1)"),
                                        label: {
                                            ClothingTopCardView(image: Image("Shirt_\(i+1)"), size: 210)
                                        })
                                    .navigationBarHidden(true)
                                    .foregroundColor(.black)
                                }
                                .padding(.leading)
                            }
                        }
                        .padding(.bottom)
                        
                        //Clothing Gallery Row #2
                        Text("AA Experience T-Shirts")
                            .font(.custom("PlayfairDisplay-Bold", size: 24))
                            .padding(.horizontal)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack (spacing: 0) {
                                ForEach(0 ..< 11) { i in
                                    NavigationLink(
                                        destination: ViewImage(image:"AA_\(i+1)"),
                                        label: {
                                            ClothingBottomCardView(image: Image("AA_\(i+1)"), size: 210)
                                        })
                                    .padding(.leading)
                                }
                            }
                        }
                        //Clothing Gallery Row #3
                        Text("1865")
                            .font(.custom("PlayfairDisplay-Bold", size: 24))
                            .padding(.horizontal)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack (spacing: 0) {
                                ForEach(0 ..< 5) { i in
                                    NavigationLink(
                                        destination: ViewImage(image:"1865_\(i+1)"),
                                        label: {
                                            ClothingBottomCardView(image: Image("1865_\(i+1)"), size: 210)
                                        })
                                    .padding(.leading)
                                }
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

// African Palace Logo at the top for the clothing tab
struct ClothingTopLogoView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("APLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Text("Clothing")
                .font(.custom("DIN Condensed Bold", size: 40))
                .padding(.horizontal)
        }
        
    }
}

// Setup for the top gallery
struct ClothingTopCardView: View {
    let image: Image
    let size: CGFloat
    
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)
            Text("$24.99").font(.title3).fontWeight(.bold)
            
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
    }
}

// Setup for the bottom gallery
struct ClothingBottomCardView: View {
    let image: Image
    let size: CGFloat
    
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)
            Text("$29.99").font(.title3).fontWeight(.bold)
            
        }
        .frame(width: size)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
    }
}
